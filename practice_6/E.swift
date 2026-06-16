func findUser(byId id: Int, in database: [[String: Any]]) -> String {
    guard let user = database.first(where: { ($0["id"] as? Int) == id }),
          let name = user["name"] as? String else {
        return "Не найден"
    }
    return "Пользователь: \(name)"
}

let users: [[String: Any]] = [
    ["id": 1, "name": "Алиса", "age": 25],
    ["id": 2, "name": "Борис"],
    ["id": 3, "age": 30]
]

print(findUser(byId: 1, in: users))
print(findUser(byId: 3, in: users))
print(findUser(byId: 9, in: users))
