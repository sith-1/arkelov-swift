import Foundation

func safeDivide(_ a: Double, _ b: Double) -> Double? {
    guard b != 0 else { return nil }
    return a / b
}

func firstPositive(_ numbers: [Int]) -> Int? {
    return numbers.first(where: { $0 > 0 })
}

print(safeDivide(10, 3) as Any)
print(safeDivide(10, 0) as Any)

if let result = safeDivide(10, 3) {
    print(String(format: "10 / 3 = %.2f", result))
} else {
    print("Деление на ноль")
}

if let result = safeDivide(10, 0) {
    print(String(format: "10 / 0 = %.2f", result))
} else {
    print("Деление на ноль")
}

print(firstPositive([-3, -1, 0, 4, 7]) as Any)
print(firstPositive([-3, -1, 0]) as Any)
