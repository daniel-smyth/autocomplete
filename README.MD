# C++ Server with Autocomplete

## Description

My C++ RESTful server with autocomplete implemented in C++.
Client with Next.js.

Instant autocomplete results from a list of 1,000,000 word.

**URL:** todo

## Getting Started

Building the server.

## CMake to Build Project

CMake is required to build the project.

If you are using OS X and Homebrew, just type

```bash
brew install cmake
```

If using windows download [cmake for Windows](https://cmake.org/download/#latest).

## nlohmann/json for JSON Serialization

If you are using OS X and Homebrew, just type

```bash
brew install nlohmann-json
```

If you are using vcpkg on your project for external dependencies, then you can install the nlohmann-json package with:

```bash
vcpkg install nlohmann-json
```

Then follow the then displayed descriptions. Please see the vcpkg project for any issues regarding the packaging.

## Install restbed

Restbed is a RESTful framework for C++.

```bash
mkdir lib
cd lib
git clone --recursive https://github.com/corvusoft/restbed.git
mkdir restbed/build
cd restbed/build
cmake [-DBUILD_SSL=NO] [-DBUILD_TESTS=NO] ..
make install
make test
```

## Running the Server

Navigate back to root and compile the project via make file.

```bash
make
```

Run the project with the restbed library flag.

```bash
LD_LIBRARY_PATH="${PWD}/lib/restbed/distribution/library" ./bin/server
```

You're server is now running!

```console
Hey! The service is up and running.
```

```bash
curl -w'\n' -v -X GET 'http://localhost:1984/resource/Da'
```

# Autocomplete Client

## Getting Started

Run the development server:

```bash
npm run dev
# or
yarn dev
```

Open [http://localhost:3000](http://localhost:3000) with your browser.

## Autocomplete Logic

The autocomplete trie.

```c++
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

    return output;
}
```
