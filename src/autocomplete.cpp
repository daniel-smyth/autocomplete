#include "../include/autocomplete.h"
#include <fstream>
#include <iostream>

using namespace std;

Node::Node(char c) : character(c), isEnd(false), counter(0) {}

Trie::Trie() : rootNode('\0') {}

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

bool compareFunction(pair<string, int> a, pair<string, int> b)
{
    return a.first < b.first;
};

vector<pair<string, int>> Trie::query(string query)
{
    Node *node = &rootNode;

    for (basic_string<char>::size_type i = 0; i < query.length(); i++)
    {
        // Check if the current query exists is in the trie
        char c = query[i];
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
    query.pop_back();
    dfs(node, query);

    sort(output.begin(), output.end(), compareFunction); // sort the vector

    return output;
}

// void main()
// {
//     Trie t = Trie();

//     ifstream file;
//     file.open("words.txt");

//     if (file.is_open())
//     {
//         string word;
//         while (file >> word)
//         {
//             t.insert(word);
//         }
//     }

//     vector<pair<string, int>> output = t.query("wh");

//     cout << "\nResult:" << endl;

//     for (vector<pair<string, int>>::size_type i = 0; i < output.size(); i++)
//     {
//         cout << output[i].first << ", " << output[i].second << endl;
//     }

//     cout << "" << endl;
// }
