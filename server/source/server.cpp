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
    json result = AUTOCOMPLETE_TREE.query(query, 20);

    session->close(OK, result.dump(), {{"Content-Length", ::to_string(result.dump().size())}});
}

void post_autocomplete_word(const shared_ptr<Session> session)
{
    const auto &request = session->get_request();
    const string query = request->get_path_parameter("name");
    AUTOCOMPLETE_TREE.insert(query);

    session->close(OK);
}

void on_startup(Service &)
{
    ifstream file;
    file.open("words.txt");

    if (file.is_open())
    {
        string word;
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
    resource->set_method_handler("POST", post_autocomplete_word);

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