#include <fstream>
#include <iostream>
#include <map>
#include <vector>

// Alphabetically compare output
bool compareFunction(std::pair<std::string, int> a, std::pair<std::string, int> b)
{
    return a.first < b.first;
};

struct Node
{
    char character;
    bool isEnd;  // This node/character is at the end of a word
    int counter; // Records instances of this word in trie
    std::map<const char, Node *> children;

    Node(char c) : character(c), isEnd(false), counter(0) {}
};

class Trie
{
    Node rootNode;

public:
    std::vector<std::pair<std::string, int>> output;

    Trie() : rootNode('\0') {}

    void insert(std::string word)
    {
        Node *node = &rootNode;

        // Loop each character of word
        for (std::basic_string<char>::size_type i = 0; i < word.length(); i++)
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
                node->children.insert(std::make_pair(c, new Node(c)));
                node = node->children.at(c);
            }
        }

        // End of word. Increment counter
        node->isEnd = true;
        node->counter += 1;
    }

    void dfs(Node *node, std::string prefix)
    {
        if (node->isEnd == true)
        {
            // Reached end of word, add word to output
            output.push_back(std::pair<std::string, int>(prefix + node->character, node->counter));
        }

        // Loop child nodes of current nodes
        std::map<const char, Node *>::iterator it;
        for (it = node->children.begin(); it != node->children.end(); it++)
        {
            // Move down to next node level with new prefix and child node's character
            dfs(it->second, prefix + node->character);
        }
    }

    std::vector<std::pair<std::string, int>> query(std::string query)
    {
        Node *node = &rootNode;

        for (std::basic_string<char>::size_type i = 0; i < query.length(); i++)
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

        std::sort(output.begin(), output.end(), compareFunction); // sort the vector

        return output;
    }
};

int main()
{
    Trie t = Trie();

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

    std::vector<std::pair<std::string, int>> output = t.query("wh");

    std::cout << "\nResult:" << std::endl;

    for (std::vector<std::pair<std::string, int>>::size_type i = 0; i < output.size(); i++)
    {
        std::cout << output[i].first << ", " << output[i].second << std::endl;
    }

    std::cout << "" << std::endl;
}
