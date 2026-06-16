func joinStrings(_ strings: String...) -> String {
    return strings.joined(separator: " ")
}

func sum(_ numbers: Int...) -> Int {
    return numbers.reduce(0, +)
}
print(sum(1, 2, 3, 4, 5))

func increment(_ number: inout Int, by value: Int) {
    number += value
}
var number = 100
increment(&number, by: 5)
print(number)

func normalize(_ array: inout [Double]) {
    guard !array.isEmpty else { return }

    guard let maxValue = array.max(),
    maxValue != 0 else {
        print("Массив не может быть нормализован, так как все элементы равны 0")
        return
    }

    for i in 0..<array.count {
        array[i] /= maxValue
    }
}
var data = [1.0, 2.0, 3.0, 4.0, 5.0]
normalize(&data)
print(data)

func clamp(_ value: inout Int, min: Int, max: Int) -> Int {
    guard min <= max else { return value }

    if value < min  {
        value = min
    } else if value > max {
        value = max
    }
    return value
}
var value = 150
clamp(&value, min: 0, max: 100)
print(value)

