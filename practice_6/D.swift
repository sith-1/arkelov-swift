let data = ["3.14", "abc", "2.71", "", "1.0", "not_a_number", "42"]

let validDoubles = data.compactMap { Double($0) }
print("Валидные: \(validDoubles)")

let average = validDoubles.reduce(0, +) / Double(validDoubles.count)
print("Среднее: \(average)")

func safeIntArray(_ strings: [String]) -> [Int] {
    return strings.compactMap { Int($0) }
}

func printMinMax(_ numbers: [Int]) {
    guard !numbers.isEmpty else {
        print("Результат: [] — нет корректных чисел")
        return
    }
    print("Результат: \(numbers)")
    print("Мин: \(numbers.min() ?? 0), Макс: \(numbers.max() ?? 0)")
}

printMinMax(safeIntArray(["10", "abc", "20", "", "5"]))
printMinMax(safeIntArray(["abc", "xyz"]))
