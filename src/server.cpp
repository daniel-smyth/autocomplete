#include "autocomplete.h"
#include <thread>
#include <memory>
#include <chrono>
#include <cstdlib>
#include <restbed>

using namespace std;
using namespace restbed;

Trie t = Trie();

void get_method_handler(const shared_ptr<Session> session)
{
    const auto &request = session->get_request();
    const string query = request->get_path_parameter("name");
    vector<pair<string, int>> output = t.query(query);

    for (pair<string, int> i : output)
        cout << "i = " << i.first << endl;

    const string body = "Hello, " + request->get_path_parameter("name");
    session->close(OK, body, {{"Content-Length", ::to_string(body.size())}});
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
            t.insert(word);
        }
    }

    fprintf(stderr, "Hey! The service is up and running.");
}

int main(const int, const char **)
{
    auto resource = make_shared<Resource>();
    resource->set_path("/resource/{name: .*}");
    resource->set_method_handler("GET", get_method_handler);

    auto settings = make_shared<Settings>();
    settings->set_port(1984);
    settings->set_default_header("Connection", "close");

    auto service = make_shared<Service>();
    service->publish(resource);
    service->set_ready_handler(service_ready_handler);
    service->start(settings);

    return EXIT_SUCCESS;
}