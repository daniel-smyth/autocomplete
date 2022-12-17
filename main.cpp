#include <iostream>
#include <map>
#include <vector>

class Node
{
public:
    char character; // This node's character
    int counter;
    std::map<const char, Node *> children;
    bool isEnd;

    Node(char c) : character(c), counter(0), isEnd(false) {}
};

class Trie
{
    Node rootNode;

public:
    std::vector<std::string> output;

    Trie() : rootNode('\0') {}

    void insert(std::string word)
    {
        Node *node = &rootNode;

        for (std::basic_string<char>::size_type i = 0; i < word.length(); i++)
        {
            char c = word[i];
            if (node->children.count(c) > 0)
            {
                node = node->children.at(c);
            }
            else
            {
                node->children.insert(std::make_pair(c, new Node(c)));
                node = node->children.at(c);
            }
        }

        node->isEnd = true;
        node->counter += 1;
    }

    void dfs(Node *node, std::string prefix)
    {
        if (node->isEnd == true)
        {
            output.push_back(prefix + node->character);
        }

        std::map<const char, Node *>::iterator it;
        for (it = node->children.begin(); it != node->children.end(); it++)
        {
            dfs(it->second, prefix + node->character);
        }
    }

    std::vector<std::string> query(std::string x)
    {
        Node *node = &rootNode;

        for (std::basic_string<char>::size_type i = 0; i < x.length(); i++)
        {
            char c = x[i];
            if (node->children.count(c) > 0)
            {
                node = node->children.at(c);
            }
            else
            {
                return output;
            }
        }

        x.pop_back();
        dfs(node, x);

        return output;
    }
};

int main()
{
    std::cout << "Autocomplete" << std::endl;

    Trie t = Trie();

    t.insert("was");
    t.insert("word");
    t.insert("war");
    t.insert("what");
    t.insert("where");
    t.insert("apple");

    std::vector<std::string> output = t.query("wh");

    std::vector<std::string>::iterator it = output.begin();
    for (it = output.begin(); it < output.end(); it++)
        std::cout << *it << std::endl;
}
