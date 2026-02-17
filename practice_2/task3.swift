let testStrings = ["123", "45.67", "abc", "100"]

for str in testStrings {
    if let number = Int(str) {
        print("  Результат: \(number) (целое число)")
    } else if let number = Double(str) {
        print("  Результат: \(number) (дробное число)")
    } else {
        print("  Не удалось преобразовать в число")
    }
}

//  Int("hello") возвращает nil (пустое значение) — программа продолжает работу swift
// int("hello") вызывает ошибку — программа может упасть python