#include "server.hpp"
#include <thread>
#include <memory>
#include <chrono>
#include <cstdlib>
#include <fstream>
#include <iostream>
#include <restbed>
#include <nlohmann/json.hpp>

using namespace std;
using namespace restbed;
using json = nlohmann::json;

Trie AUTOCOMPLETE_TREE = Trie();

void get_autocomplete_results(const shared_ptr<Session> session)
{
    const auto &request = session->get_request();
    const string query = request->get_path_parameter("name");
    json result = AUTOCOMPLETE_TREE.query(query);

    if (result.size() > 0)
    {
        session->close(OK, result.dump(), {{"Content-Length", ::to_string(result.dump().size())}});
    }
    else
    {
        string emptyResponse = "";
        session->close(OK, emptyResponse, {{"Content-Length", ::to_string(emptyResponse.size())}});
    }
}

void on_startup(Service &)
{
    std::ifstream file;
    file.open("words.txt");

    if (file.is_open())
    {
        std::string word;
        while (file >> word)
        {
            AUTOCOMPLETE_TREE.insert(word);
        }
    }

    fprintf(stderr, "\nServer up: http://localhost:1984");
}

int main(const int, const char **)
{
    auto resource = make_shared<Resource>();
    resource->set_path("/{name: .*}");
    resource->set_method_handler("GET", get_autocomplete_results);

    auto settings = make_shared<Settings>();
    settings->set_port(1984);
    settings->set_default_header("Connection", "close");
    settings->set_default_header("Access-Control-Allow-Origin", "*");

    auto service = make_shared<Service>();
    service->publish(resource);
    service->set_ready_handler(on_startup);
    service->start(settings);

    return EXIT_SUCCESS;
}