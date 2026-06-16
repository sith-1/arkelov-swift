struct Employee {
    let name: String
    let position: String?
}

struct Department {
    let title: String
    var head: Employee?
}

struct Company {
    let name: String
    var department: Department?
}

let company1 = Company(
    name: "TechCorp",
    department: Department(
        title: "iOS",
        head: Employee(name: "Алиса", position: "Lead")
    )
)
let company2 = Company(name: "StartupX", department: nil)
let company3 = Company(
    name: "EmptyHead",
    department: Department(title: "QA", head: nil)
)

print(company1.department?.head?.position ?? "Неизвестно")
print(company2.department?.head?.position ?? "Неизвестно")
print(company3.department?.head?.position ?? "Неизвестно")

let records: [[String: String]?] = [
    ["name": "Анна", "email": "anna@mail.ru"],
    nil,
    ["name": "Борис"],
    ["name": "Виктор", "email": "victor@gmail.com"]
]

let emails = records.compactMap { $0?["email"] }
print(emails)
