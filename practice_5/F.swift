import Foundation
struct Product {
    let name: String
    let category: String
    let price: Double
    let inStock: Bool
}

// В наличии (по цене): [Кабель (150.0), Мышь (800.0), Клавиатура (2500.0), Монитор (25000.0)]
// Дорогие товары: ["КЛАВИАТУРА", "МОНИТОР", "НОУТБУК"]
// Средние цены: ["Аксессуары": 475.0, "Периферия": 9433.33, ...]
// Самый дорогой: Ноутбук (75000.0)
// Отчёт: "Всего товаров: 10, в наличии: 7, средняя цена: 12340.0 ₽"

let products = [
    Product(name: "Кабель", category: "Аксессуары", price: 150.0, inStock: true),
    Product(name: "Мышь", category: "Периферия", price: 800.0, inStock: true),
    Product(name: "Клавиатура", category: "Периферия", price: 2500.0, inStock: true),
    Product(name: "Монитор", category: "Периферия", price: 25000.0, inStock: false),
    Product(name: "Ноутбук", category: "Компьютеры", price: 75000.0, inStock: true),
    Product(name: "Флешка", category: "Аксессуары", price: 500.0, inStock: false),
    Product(name: "Наушники", category: "Аксессуары", price: 1200.0, inStock: true),
    Product(name: "Коврик", category: "Аксессуары", price: 300.0, inStock: true),
    Product(name: "Планшет", category: "Компьютеры", price: 35000.0, inStock: false),
    Product(name: "Смартфон", category: "Компьютеры", price: 45000.0, inStock: true)
]

let inStockSorted = products
    .filter { $0.inStock}
    .sorted { $0.price < $1.price }
    
print("В наличии (по цене): \(inStockSorted.map { "\($0.name) (\($0.price))" })")