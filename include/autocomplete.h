#ifndef AUTOCOMPLETE_H
#define AUTOCOMPLETE_H

#include <fstream>
#include <iostream>
#include <map>
#include <vector>

using namespace std;

struct Node
{
    char character;
    bool isEnd;
    int counter;
    map<const char, Node *> children;

    Node(char c);
};

class Trie
{
    Node rootNode;
    vector<pair<string, int>> output;
    void dfs(Node *node, string prefix);

public:
    Trie();
    void insert(string word);
    vector<pair<string, int>> query(string query);
};

#endif