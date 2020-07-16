# AlgoBrain

![Swift](https://github.com/JMatharu/AlgoBrain/workflows/Swift/badge.svg?branch=master)
[![Build Status](https://travis-ci.org/JMatharu/AlgoBrain.svg?branch=master)](https://travis-ci.org/JMatharu/AlgoBrain)
[![codecov](https://codecov.io/gh/JMatharu/AlgoBrain/branch/master/graph/badge.svg)](https://codecov.io/gh/JMatharu/AlgoBrain)
[![BSD 3-Clause LiCENSE](https://img.shields.io/badge/license-BSD3-brightgreen.svg)](LICENSE)

A very simple Swift Package with implemented Data Structure and Algorithms for direct use into project.

## Completed
### Data Structures
- LinkedList
    - Singly Linked List
    - Doubly Linked List
- Queues
    - Queue as Array
    - Queue as LinkedList
- Stacks
    - Stack as Array
    - Stack as LinkedList
    
### Algorithms
#### Searching 
- Linear Search
- Binary Search 

## Installation
- Via Swift Packages
- Search for `AlgoBrain` and select the version to install

## Usage
```swift
import AlgoBrain
```
Using a Linked list
```swift
var linkedList = LinkedList<Int>()
linkedList.insertAt(.end, with: 0)
linkedList.insertAt(.start, with: 1)
linkedList.insertAt(.start, with: 2)
linkedList.insertAt(.start, with: 3)
linkedList.insertAt(.index(2), with: 4)
print(linkedList.head) // 3 -> 2 -> 4 -> 1 -> 0
linkedList.removeAt(.start)
linkedList.removeAt(.end)
linkedList.removeAt(.index(2))
print(linkedList.head) // 2 -> 4
```

Similarly other datastructures and algorithms can be used.

Note: All the methods from libray are marked with their Time Complexity.

## In Progress
### Data Structures
- Tree
- Hashing
- Graph
- .......

### Algorithms
#### Sort
- Bubble Sort
- Insertion Sort
- Selection Sort
- Quick Sort
- Merge Sort
- Heap Sort
- Radix Sort
- Counting Sort
- Shell Sort
