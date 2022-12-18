#include "autocomplete.h"
#include <nlohmann/json.hpp>
#include <thread>
#include <memory>
#include <chrono>
#include <cstdlib>
#include <fstream>
#include <iostream>
#include <restbed>

using namespace std;
using namespace restbed;
using json = nlohmann::json;

const int PORT = 1984;
Trie AUTOCOMPLETE_TREE = Trie();

void get_method_handler(const shared_ptr<Session> session)
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

void service_ready_handler(Service &)
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

    fprintf(stderr, "\nServer up.");
}

int main(const int, const char **)
{
    auto resource = make_shared<Resource>();
    resource->set_path("/{name: .*}");
    resource->set_method_handler("GET", get_method_handler);

    auto settings = make_shared<Settings>();
    settings->set_port(PORT);
    settings->set_default_header("Connection", "close");
    settings->set_default_header("Access-Control-Allow-Origin", "*");

    auto service = make_shared<Service>();
    service->publish(resource);
    service->set_ready_handler(service_ready_handler);
    service->start(settings);

    return EXIT_SUCCESS;
}