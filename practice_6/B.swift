func greetUser(_ data: [String: String]) {
    guard let name = data["name"],
          let ageString = data["age"],
          let age = Int(ageString) else {
        print("Ошибка: неполные данные")
        return
    }
    print("Привет, \(name)! Тебе \(age) лет.")
}

func parseConfig(_ raw: [String: String]) -> (host: String, port: Int, path: String) {
    let host = raw["host"] ?? "localhost"
    let port = Int(raw["port"] ?? "") ?? 8080
    let path = raw["path"] ?? "/"
    return (host, port, path)
}

greetUser(["name": "Олег", "age": "22"])
greetUser(["name": "Анна"])
greetUser(["name": "Иван", "age": "abc"])

let config1 = ["host": "example.com", "port": "3000", "path": "/api"]
let config2 = ["host": "myserver.ru"]

print(parseConfig(config1))
print(parseConfig(config2))
