import Foundation

print("Введите первое число:", terminator: " ")
guard let input1 = readLine(), let a = Double(input1) else {
    print("Ошибка ввода числа")
    exit(1)
}

print("Введите оператор (+, -, *, /):", terminator: " ")
guard let operation = readLine() else {
    print("Ошибка ввода оператора")
    exit(1)
}

print("Введите второе число:", terminator: " ")
guard let input2 = readLine(), let b = Double(input2) else {
    print("Ошибка ввода числа")
    exit(1)
}

print("\n\(a) \(operation) \(b) = ", terminator: "")

switch operation {
case "+":
    print(a + b)
case "-":
    print(a - b)
case "*":
    print(a * b)
case "/":
    if b == 0 {
        print("Ошибка: деление на ноль!")
    } else {
        print(a / b)
    }
default:
    print("Ошибка: неизвестный оператор '\(operation)'")
}

func grade(score: Int) -> String {
    switch score {
    case 0..<60:   return "Два,иди ботай"
    case 60..<75:  return "3. Но лучше двойка,чем тройка"
    case 75..<90:  return "Норм"
    case 90...100: return "С кайфом"
    default:       return "ERROR"
    }
}

print(grade(score: 95))