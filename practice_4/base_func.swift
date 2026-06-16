func power(base: Int, exponent: Int = 2) -> Int {
    // Обработка случая с отрицательной степенью
    guard exponent >= 0 else {
        print("Отрицательная степень \(exponent) не может быть корректно обработана " +
              "при возврате целого числа, так как результат будет дробным (1/\(base) в степени \(-exponent)). " +
              "Возвращаем 0 как значение по умолчанию.")
        return 0
    }
    
    // Любое число (кроме 0) в степени 0 равно 1
    // 0^0 обычно считается неопределённостью, но для простоты вернём 1
    if exponent == 0 {
        return 1
    }
    
    var result = 1
    for _ in 0..<exponent {
        result *= base
    }
    return result
}

print(power(base: 3))               // 9
print(power(base: 2, exponent: 10)) // 1024
print(power(base: 5, exponent: 3))  // 125
print(power(base: 7, exponent: 0))  // 1
print(power(base: 4, exponent: -2)) // 0 (с пояснением в консоли)


func greet(_ name: String, _ from: String) -> String {
    return "Привет, \(name)! Рад видеть тебя из \(from)!"
}

print(greet("Амиран", "Черкесска")) 

func move (from start: String, to end: String) -> String {
    return "Перемещение из \(start) в \(end)"
}
print(move(from: "Черкесск", to: "Махачкала"))

func repeatText(_ text : String, times count: Int) -> String {
    return String(repeating: text, count: count)
}

print(repeatText("Hello", times: 3))

