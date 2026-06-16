let grades = [
    "Анна": [90, 85, 92, 88],
    "Борис": [70, 65, 80, 75],
    "Виктор": [95, 100, 92, 98]
]

let averageGrades = grades.mapValues {scores in Double (scores.reduce(0,+)) / Double(scores.count ) }

print(averageGrades)


let words = ["swift", "python", "swift", "go", "python", "swift", "rust", "go", "python", "swift"]
// Ожидаемый результат:
// swift: 4
// python: 3
// go: 2

let frequencyDict = words.reduce( into: [String: Int]()) {
    counts,word in counts [word , default: 0 ] += 1
}

let top3 = frequencyDict
    .sorted { $0.value > $1.value}
    .prefix(3)
    
print(top3)