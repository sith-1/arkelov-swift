let numbers = Array (1...20)

let sum = numbers
    .filter { $0 % 3 == 0 }
    .reduce (0,+)

print(sum)

let cities = ["Москва", "Уфа", "Новосибирск", "Казань", "Сочи"]

let formattedCities = cities
    .map {"\($0.uppercased()) (\($0.count) букв)"}
    .sorted { $0.count < $1.count }

print(formattedCities)