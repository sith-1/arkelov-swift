let text = "Swift это Swift язык для разработки приложений для Apple и Linux"
// Ожидаемый результат: ["apple", "linux", "swift", "приложений", "разработки"]
let words = text.split(separator : " ").map(String.init)

// Фильтруем именно слова (а не символы), приводим к lowercase, убираем дубликаты и сортируем.
let filtered = words
    .filter { $0.count > 4 }
    .map { $0.lowercased() }

let result = Array(Set(filtered)).sorted()
print(result)