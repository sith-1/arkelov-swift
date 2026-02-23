let a = 23
let b = 7


let sum = a + b
let difference = a - b
let product = a * b
let integerDivision = a / b
let remainder = a % b

let realDivision = Double(a) / Double(b)


print("Числа: a = \(a), b = \(b)")
print("Сложение: \(a) + \(b) = \(sum)")
print("Вычитание: \(a) - \(b) = \(difference)")
print("Умножение: \(a) * \(b) = \(product)")
print("Целочисленное деление: \(a) / \(b) = \(integerDivision)")
print("Остаток от деления: \(a) % \(b) = \(remainder)")
print("\(a) / \(b) = \(Double(a) / Double(b))")

/*
Оператор % в Swift сохраняет знак делимого (первого числа): -7 % 3 = -1.
В Python остаток всегда неотрицательный: -7 % 3 = 2, потому что Python использует округление вниз при делении.
Разница возникает из-за разных формул: Swift: a = (a/b) * b + остаток, Python: a = b * (a//b) + остаток с округлением вниз.
*/