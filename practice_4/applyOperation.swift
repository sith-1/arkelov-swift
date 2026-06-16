func add(_ a: Int, _ b: Int) -> Int { return a + b }
func multiply(_ a: Int, _ b: Int) -> Int { return a * b }
func divide(_ a: Int, _ b: Int) -> Int { return a / b }
func subtract(_ a: Int, _ b: Int) -> Int { return a - b }

func applyOperation(_ a: Int, _ b: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(a, b)
}

let operations : [(Int, Int) -> Int] = [add, multiply, divide, subtract]

for operation in operations {
    print(applyOperation(12, 4, operation: operation))
}

func applyToEach(_ array: inout[Int], transform: (Int) -> Int) -> [Int] {
    for i in 0..<array.count {
        array[i] = transform(array[i])
    }
    return array
}

var numbers = [1, 2, 3, 4, 5]
applyToEach(&numbers, transform: { $0 * 2 })
print(numbers)


