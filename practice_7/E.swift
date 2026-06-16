// Связный список реализуют через class, а не struct:
// узлы должны ссылаться друг на друга (next), и при копировании struct
// каждый узел стал бы отдельной копией — цепочка разорвалась бы.
// class даёт общую ссылку: несколько указателей могут ссылаться на один узел.

class LinkedNode {
    var value: Int
    var next: LinkedNode?

    init(value: Int, next: LinkedNode? = nil) {
        self.value = value
        self.next = next
    }
}

func printList(_ head: LinkedNode?) {
    var current = head
    while let node = current {
        print(node.value, terminator: " -> ")
        current = node.next
    }
    print("nil")
}

func sum(_ head: LinkedNode?) -> Int {
    var total = 0
    var current = head
    while let node = current {
        total += node.value
        current = node.next
    }
    return total
}

func count(_ head: LinkedNode?) -> Int {
    var total = 0
    var current = head
    while let node = current {
        total += 1
        current = node.next
    }
    return total
}

let node3 = LinkedNode(value: 30, next: nil)
let node2 = LinkedNode(value: 20, next: node3)
let node1 = LinkedNode(value: 10, next: node2)

printList(node1)
print(sum(node1))
print(count(node1))
