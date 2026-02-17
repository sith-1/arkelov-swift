let fullName = "Аркелов Амиран"
let nameComponents = fullName.split(separator: " ")

print("Полное имя: \(fullName)")
print("Количество символов: \(fullName.count)")

if let firstChar = fullName.first {
    print("Первый символ: \(firstChar)")
}

if let lastChar = fullName.last {
    print("Последний символ: \(lastChar)")
}

print("Верхний регистр: \(fullName.uppercased())")

let containsVan = fullName.lowercased().contains("ван")
print("Содержит 'ван': \(containsVan)")

let reversedName = String(fullName.reversed())
print("Задом наперёд: \(reversedName)")

let startsWithIv = fullName.hasPrefix("Ив")
let endsWithOv = fullName.hasSuffix("ов")
print("Начинается с 'Ив': \(startsWithIv)")
print("Заканчивается на 'ов': \(endsWithOv)")