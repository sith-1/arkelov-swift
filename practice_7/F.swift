struct Point: CustomStringConvertible {
    var x: Double
    var y: Double

    var description: String {
        "Point(x: \(x), y: \(y))"
    }
}

struct Size {
    var width: Double
    var height: Double
}

struct Rectangle {
    var origin: Point
    var size: Size

    var area: Double {
        size.width * size.height
    }

    var perimeter: Double {
        2 * (size.width + size.height)
    }

    var center: Point {
        get {
            Point(
                x: origin.x + size.width / 2,
                y: origin.y + size.height / 2
            )
        }
        set {
            origin.x = newValue.x - size.width / 2
            origin.y = newValue.y - size.height / 2
        }
    }

    func contains(_ point: Point) -> Bool {
        point.x >= origin.x &&
        point.x <= origin.x + size.width &&
        point.y >= origin.y &&
        point.y <= origin.y + size.height
    }

    mutating func translate(dx: Double, dy: Double) {
        origin.x += dx
        origin.y += dy
    }
}

var rect = Rectangle(origin: Point(x: 0, y: 0), size: Size(width: 10, height: 5))
print(rect.area)
print(rect.center)
rect.center = Point(x: 0, y: 0)
print(rect.origin)
print(rect.contains(Point(x: -3, y: -1)))

let rectangles = [
    Rectangle(origin: Point(x: 0, y: 0), size: Size(width: 10, height: 5)),
    Rectangle(origin: Point(x: 2, y: 2), size: Size(width: 8, height: 8)),
    Rectangle(origin: Point(x: -10, y: -10), size: Size(width: 5, height: 5)),
    Rectangle(origin: Point(x: 1, y: 1), size: Size(width: 20, height: 15))
]

if let largest = rectangles.max(by: { $0.area < $1.area }) {
    print("Наибольшая площадь: \(largest.area)")
}

let containingPoint = Point(x: 5, y: 5)
let filtered = rectangles.filter { $0.contains(containingPoint) }
print("Содержат точку (5, 5): \(filtered.map { $0.area })")
