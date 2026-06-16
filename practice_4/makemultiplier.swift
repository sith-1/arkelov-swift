func makeMultiplier(_ factor: Int) -> (Int) -> Int {
    return { $0 * factor }
}

let double = makeMultiplier(2)
print(double(5))

func makeAdder(_ value: Int) -> (Int) -> Int {
    return { $0 + value }
}

let addTen = makeAdder(10)
print(addTen(5))

func makeFormatter(prefix: String, suffix: String) -> (String) -> String {
    return { prefix + $0 + suffix }
}

let bracket = makeFormatter(prefix: "[", suffix: "]")
print(bracket("Hello"))

let numbers = [1, 2, 3, 4, 5]

let sorted1 = numbers.sorted(by: { (a:Int, b:Int) -> Bool in a > b })

let sorted2 = numbers.sorted(by: { a,b in return a > b })

let sorted3 = numbers.sorted(by: { a, b in a > b})

let sorted4 = numbers.sorted(by: {$0 > $1} )

let sorted5 = numbers.sorted( by: >)

print(sorted1)
print(sorted2)
print(sorted3)
print(sorted4)
print(sorted5)