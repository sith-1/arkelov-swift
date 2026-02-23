func minMax(array: [Int]) -> (min: Int, max: Int) {
    // Проверяем, что массив не пустой
    guard !array.isEmpty else {
        fatalError("Массив не может быть пустым")
    }
    
    var currentMin = array[0]
    var currentMax = array[0]
    
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    
    return (currentMin, currentMax)
}

let result = minMax(array: [3, 1, 7, -2, 5])
print("Мин: \(result.min), макс: \(result.max)")
// Ожидаемый вывод: Мин: -2, макс: 7



