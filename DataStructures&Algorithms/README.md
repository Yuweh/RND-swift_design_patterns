# Data Structures & Algorithms

Swift is a popular programming language for developing iOS applications, and it provides a wide range of data structures and algorithms to work with. Here are some commonly used data structures and algorithms in Swift iOS, along with resources to learn more:

Arrays - Arrays are a common data structure in Swift that allows you to store a collection of values of the same type.
Resource:

```
// Create an array of integers
var numbers = [1, 2, 3, 4, 5]

// Access an element of the array
let firstNumber = numbers[0]

// Add an element to the end of the array
numbers.append(6)

// Remove an element from the array
numbers.remove(at: 3)


```


Swift official documentation on Arrays: https://docs.swift.org/swift-book/LanguageGuide/CollectionTypes.html#ID114
Dictionaries - Dictionaries are another important data structure in Swift that allow you to store key-value pairs.
Resource:

```
// Create a dictionary of String keys and Int values
var ages = ["Alice": 27, "Bob": 32, "Charlie": 22]

// Access a value in the dictionary
let aliceAge = ages["Alice"]

// Add a new key-value pair to the dictionary
ages["Dave"] = 45

// Remove a key-value pair from the dictionary
ages.removeValue(forKey: "Charlie")


```

Swift official documentation on Dictionaries: https://docs.swift.org/swift-book/LanguageGuide/CollectionTypes.html#ID119
Sets - Sets are a collection of unique values in Swift, and they are useful for operations like finding the intersection or union of two sets.
Resource:

```
// Create a set of integers
var numbers: Set = [1, 2, 3, 4, 5]

// Check if a value is in the set
let containsThree = numbers.contains(3)

// Add a value to the set
numbers.insert(6)

// Remove a value from the set
numbers.remove(4)


```

Swift official documentation on Sets: https://docs.swift.org/swift-book/LanguageGuide/CollectionTypes.html#ID127
Linked Lists - Linked lists are a data structure in Swift that allow you to store a sequence of elements where each element points to the next element in the sequence.
Resource:

```
// Define a node in the linked list
class Node<T> {
    var value: T
    var next: Node<T>?
    
    init(_ value: T) {
        self.value = value
    }
}

// Create a linked list of integers
var head: Node<Int>? = Node(1)
head?.next = Node(2)
head?.next?.next = Node(3)

// Traverse the linked list
var current = head
while current != nil {
    print(current?.value ?? "")
    current = current?.next
}


```

Swift Algorithm Club's implementation of Linked Lists: https://github.com/raywenderlich/swift-algorithm-club/tree/master/Linked%20List
Trees - Trees are a hierarchical data structure in Swift that allow you to represent relationships between elements, such as parent-child relationships.
Resource:

```
// Define a node in the tree
class Node<T> {
    var value: T
    var children: [Node<T>] = []
    
    init(_ value: T) {
        self.value = value
    }
}

// Create a tree of strings
var root = Node("A")
root.children.append(Node("B"))
root.children.append(Node("C"))
root.children[1].children.append(Node("D"))

// Traverse the tree using recursion
func traverse(_ node: Node<String>) {
    print(node.value)
    for child in node.children {
        traverse(child)
    }
}
traverse(root)


```

Swift Algorithm Club's implementation of Trees: https://github.com/raywenderlich/swift-algorithm-club/tree/master/Tree
Sorting Algorithms - Sorting algorithms are used to arrange elements in a specific order, such as ascending or descending order. Swift provides built-in functions for sorting arrays, and there are many sorting algorithms you can implement yourself.
Resource:

```
// Sort an array of integers using the built-in sort() function
var numbers = [5, 3, 1, 4, 2]
numbers.sort()
print(numbers) // [1, 2, 3, 4, 5]

// Sort an array of strings using the selection sort algorithm
func selectionSort(_ array: inout [String]) {
    for i in 0..<array.count {
        var minIndex = i
        for j in i+1..<array.count {
            if array[j] < array[minIndex] {
                minIndex = j
            }
        }
        if i != minIndex {
            array.swapAt(i, minIndex)
        }
    }
}
var names = ["Alice", "Charlie", "Bob"]
selectionSort(&names)
print(names) // ["Alice", "Bob", "Charlie"]


```

Swift official documentation on sorting arrays: https://developer.apple.com/documentation/swift/array/1688499-sort
Swift Algorithm Club's implementation of sorting algorithms: https://github.com/raywenderlich/swift-algorithm-club/tree/master/Sorting
Search Algorithms - Search algorithms are used to find a specific element in a data structure. Swift provides built-in functions for searching arrays, and there are many search algorithms you can implement yourself.
Resource:

```
// Search for a value in an array using the built-in firstIndex() function
var numbers = [1, 2, 3, 4, 5]
if let index


```

Swift official documentation on searching arrays: https://developer.apple.com/documentation/swift/array/1687767-index
Swift Algorithm Club's implementation of search algorithms: https://github.com/raywenderlich/swift-algorithm-club/tree/master/Search
