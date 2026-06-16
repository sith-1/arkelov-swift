import Foundation

let result1 = (1...30)
    .filter { $0 % 3 == 0}
    .map { $0 * $0}
    .reduce (0,+)

print(result1)

let words = ["hello", "world", "swift", "is", "great"]

let result2 = words
    .filter {$0.count > 4}
    .map {$0.uppercased()}
    .joined(separator: " ")

print(result2)


let numbers = [1, -2, 3, -4, 5, -6] 

let result3 = numbers
    .filter{$0 > 0 }
    .map{$0 * 2}
    .reduce(1,*)

print(result3)

typealias Student =  (name: String, grade: Double)
let students: [Student] = [
    ("Анна", 4.8),
    ("Борис", 3.2),
    ("Вера", 4.5),
    ("Глеб", 2.9),
    ("Дарья", 3.8),
    ("Егор", 4.1),
    ("Жанна", 4.9),
    ("Захар", 3.5)
]

let excelentstudents = students
    .filter{ $0.grade >= 4.5}
    .sorted{$0.grade > $1.grade}

let excelentstudentsFormatted = excelentstudents
    .map{"\($0.name) (\($0.grade))"}
    .joined(separator: ", ")
print("Отличниеи : \(excelentstudentsFormatted)")

let averageGrade = students
    .map{$0.grade}
    .reduce(0,+) / Double(students.count)

print(String(format: "Средний балл: %.2f", averageGrade))

let allNames = students
    .map {$0.name}
    .joined(separator: ", ")

print("Все студенты: \(allNames)")

let laggingstudents = students
    .filter{ $0.grade >= 3.5}
    .count

print("Стдуентов с баллом ниже 3.5 : \(laggingstudents)")

