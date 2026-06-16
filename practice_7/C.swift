struct PointStruct {
    var x: Int
    var y: Int
}

class PointClass {
    var x: Int
    var y: Int

    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
}

// struct — тип-значение: при присваивании создаётся копия.
// Изменение structB не затрагивает structA.
var structA = PointStruct(x: 1, y: 2)
var structB = structA
structB.x = 99
print(structA.x)  // 1 — оригинал не изменился
print(structB.x)  // 99

// class — ссылочный тип: classA и classB указывают на один объект в памяти.
// Изменение через classB меняет тот же объект, что и classA.
let classA = PointClass(x: 1, y: 2)
let classB = classA
classB.x = 99
print(classA.x)   // 99 — оба ссылаются на один экземпляр
print(classB.x)   // 99
print(classA === classB)  // true — одна и та же ссылка

func modifyClass(_ p: PointClass) {
    p.x += 10
}

func modifyStruct(_ p: inout PointStruct) {
    p.x += 10
}

let obj = PointClass(x: 5, y: 5)
modifyClass(obj)
print(obj.x)  // 15 — класс передаётся по ссылке, оригинал изменился

var val = PointStruct(x: 5, y: 5)
modifyStruct(&val)
print(val.x)  // 15 — struct нужен inout, иначе изменилась бы только копия
