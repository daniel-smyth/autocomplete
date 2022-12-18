#ifndef AUTOCOMPLETE_H
#define AUTOCOMPLETE_H
#include <thread>
#include <map>
#include <vector>

struct Node
{
    char character;
    bool isEnd;
    int counter;
    std::map<const char, Node *> children;

    Node(char c);
};

class Trie
{
    Node rootNode;
    std::vector<std::pair<std::string, int>> output;
    void dfs(Node *node, std::string prefix);

public:
    Trie();
    void insert(std::string word);
    std::vector<std::pair<std::string, int>> query(std::string query);
};

#endif