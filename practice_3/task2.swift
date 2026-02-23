var username: String? = nil
let defaultName = "Гость"
let displayName = username ?? defaultName
print("Привет, \(displayName)!")
username = "Алексей"
let displayName2 = username ?? defaultName
print("Привет, \(displayName2)!")

let inputs: [String?] = ["42", nil, "hello", "100", nil]

for element in inputs {
    let value = element ?? "нет данных"
    print("Результат: \(value)")
}