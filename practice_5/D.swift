let input: [String?] = ["swift", nil, "python", nil, "go", nil]
// Ожидаемый результат: ["SWIFT", "PYTHON", "GO"]

let result  = input.compactMap { $0?.uppercased()}
print(result)

let nested = [[5, 2, 8], [1, 9, 3], [4, 7, 6]]
// После flatMap: [5, 2, 8, 1, 9, 3, 4, 7, 6]
// Чётные по убыванию: [8, 6, 4, 2]

let result2 = nested 
    .flatMap { $0 }
    .filter { $0 % 2 == 0 }
    .sorted(by: >)

print(result2)