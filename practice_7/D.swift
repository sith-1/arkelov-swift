struct BankCard {
    let number: String
    let holder: String
    private(set) var balance: Double

    init(number: String, holder: String, initialBalance: Double = 0) {
        self.number = number
        self.holder = holder
        self.balance = initialBalance
    }

    mutating func deposit(_ amount: Double) {
        guard amount > 0 else { return }
        balance += amount
    }

    mutating func withdraw(_ amount: Double) -> Bool {
        guard amount > 0, balance >= amount else { return false }
        balance -= amount
        return true
    }
}

struct Counter {
    static var totalCreated: Int = 0
    var count: Int = 0

    init() {
        Counter.totalCreated += 1
    }

    mutating func increment(by amount: Int = 1) {
        count += amount
    }
}

var card = BankCard(number: "4276-XXXX-XXXX-1234", holder: "Иван Петров", initialBalance: 1000)
card.deposit(500)
print(card.balance)
print(card.withdraw(2000))
print(card.withdraw(300))
print(card.balance)

var c1 = Counter()
var c2 = Counter()
c1.increment(by: 5)
c2.increment()
print(c1.count)
print(c2.count)
print(Counter.totalCreated)
