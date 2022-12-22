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

    // A node of the data trie
    Node(char c);
};

class Trie
{
    // The trie has at least the root node. This has no character
    Node rootNode;
    // The output - an array of matching words
    std::vector<std::pair<std::string, int>> output;

    // Depth-first traversal of the trie
    void dfs(Node *node, std::string prefix);

public:
    // The trie has at least the root node.
    // The root node does not store any character
    Trie();

    // Insert a word data into the trie
    void insert(std::string word);

    // Given an input (a prefix), retrieve all words stored in
    // the trie with that prefix, sort the words by the number of
    // times they have been inserted
    std::vector<std::pair<std::string, int>> query(std::string query, int outputSize);
};

#endif