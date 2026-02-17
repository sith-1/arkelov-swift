let emoji = "👨‍👩‍👧‍👦"
let cafe = "café"
let simple = "hello"

print("emoji.count = \(emoji.count)")       // count возвращает количество визуальных символов (то, что видит пользователь)
print("cafe.count = \(cafe.count)")         // len() возвращает количество Unicode-кодовых точек
print("simple.count = \(simple.count)")     // utf8.count считает количество байт в кодировке UTF-8
                                            //utf16.count считает количество 16-битных единиц в кодировке UTF-16
print("cafe.utf8.count = \(cafe.utf8.count)")
print("cafe.utf16.count = \(cafe.utf16.count)")
