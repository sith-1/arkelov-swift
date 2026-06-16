struct Contact {
    let name: String
    var phone: String?
    var email: String?
    var company: String?
}

struct PhoneBook {
    private var contacts: [Contact] = []

    mutating func add(_ contact: Contact) {
        contacts.append(contact)
    }

    func find(byName name: String) -> Contact? {
        return contacts.first(where: { $0.name == name })
    }

    func allEmails() -> [String] {
        return contacts.compactMap { $0.email }
    }

    func contactsWithPhone() -> [Contact] {
        return contacts.filter { $0.phone != nil }
    }

    func summary(for name: String) -> String {
        guard let contact = find(byName: name) else {
            return "Контакт не найден"
        }
        let phone = contact.phone ?? "не указано"
        let email = contact.email ?? "не указано"
        return "Имя: \(contact.name), Телефон: \(phone), Email: \(email)"
    }
}

var book = PhoneBook()
book.add(Contact(name: "Анна", phone: "+79001234567", email: "anna@mail.ru", company: "TechCorp"))
book.add(Contact(name: "Борис", phone: nil, email: "boris@gmail.com", company: nil))
book.add(Contact(name: "Виктор", phone: "+79007654321", email: nil, company: nil))

print(book.find(byName: "Анна") as Any)
print(book.allEmails())
print(book.summary(for: "Виктор"))
print(book.contactsWithPhone().map { $0.name })
