#include "autocomplete.h"

using namespace std;

// A node of the data trie
Node::Node(char c) : character(c), isEnd(false), counter(0) {}

// The trie has at least the root node.
// The root node does not store any character
Trie::Trie() : rootNode('\0') {}

// Insert a word data into the trie
void Trie::insert(string word)
{
    Node *node = &rootNode;

    // Loop each character of word
    for (basic_string<char>::size_type i = 0; i < word.length(); i++)
    {
        char c = word[i];
        if (node->children.count(c) > 0)
        {
            // If child node with this character exists, reassign pointer to child node
            node = node->children.at(c);
        }
        else
        {
            // If no child node with this character does not exist, create new node and reassign pointer
            node->children.insert(make_pair(c, new Node(c)));
            node = node->children.at(c);
        }
    }

    // End of word. Increment counter
    node->isEnd = true;
    node->counter += 1;
}

// Depth-first traversal of the trie
void Trie::dfs(Node *node, string prefix)
{
    if (node->isEnd == true)
    {
        // Reached end of word, add word to output
        output.push_back(pair<string, int>(prefix + node->character, node->counter));
    }

    // Loop child nodes of current nodes
    map<const char, Node *>::iterator it;
    for (it = node->children.begin(); it != node->children.end(); it++)
    {
        // Move down to next node level with new prefix and child node's character
        dfs(it->second, prefix + node->character);
    }
}

// Alphabetically sort the output of a trie query
bool compareFunction(pair<string, int> a, pair<string, int> b)
{
    return a.first < b.first;
};

// Given an input (a prefix), retrieve all words stored in
// the trie with that prefix, sort the words by the number of
// times they have been inserted
vector<pair<string, int>> Trie::query(string word)
{
    Node *node = &rootNode;

    for (basic_string<char>::size_type i = 0; i < word.length(); i++)
    {
        // Check if the current query exists is in the trie
        char c = word[i];
        if (node->children.count(c) > 0)
        {
            node = node->children.at(c);
        }
        else
        {
            // Word doesn't exist, return empty output
            return output;
        }
    }

    // Traverse the trie to get all candidates
    word.pop_back();
    dfs(node, word);

    // sort the output
    sort(output.begin(), output.end(), compareFunction);
    vector<pair<string, int>> reducedSize(output.begin(), output.begin() + 10);

    output.clear();

    return reducedSize;
}
