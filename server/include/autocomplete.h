#ifndef AUTOCOMPLETE_H
#define AUTOCOMPLETE_H
#include <thread>
#include <map>
#include <vector>

struct Node
{
    // The character stored in this node
    char character;
    // Whether this character can be the end of a word
    bool isEnd;
    // A counter indicating how many times a word is inserted
    int counter;
    // dictionary of child nodes keys are characters, values are nodes
    std::map<const char, Node *> children;

    Node(char c);
};

class Trie
{
    // The trie has at least the root node. This has no character
    Node rootNode;
    //  Array of matching words
    std::vector<std::pair<std::string, int>> output;

    void dfs(Node *node, std::string prefix);

public:
    Trie();

    void insert(std::string word);
    std::vector<std::pair<std::string, int>> query(std::string query);
};

#endif