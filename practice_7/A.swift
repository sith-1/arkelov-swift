struct Temperature {
    var celsius: Double

    var fahrenheit: Double {
        get { celsius * 9 / 5 + 32 }
        set { celsius = (newValue - 32) * 5 / 9 }
    }
}

struct Vector2D: CustomStringConvertible {
    var x: Double
    var y: Double

    var magnitude: Double {
        (x * x + y * y).squareRoot()
    }

    mutating func scale(by factor: Double) {
        x *= factor
        y *= factor
    }

    static func add(_ a: Vector2D, _ b: Vector2D) -> Vector2D {
        Vector2D(x: a.x + b.x, y: a.y + b.y)
    }

    var description: String {
        "Vector2D(x: \(x), y: \(y))"
    }
}

var temp = Temperature(celsius: 100)
print(temp.fahrenheit)
temp.fahrenheit = 32
print(temp.celsius)

var v1 = Vector2D(x: 3, y: 4)
print(v1.magnitude)
v1.scale(by: 2)
print(v1)

let v2 = Vector2D(x: 1, y: 1)
let v3 = Vector2D.add(v1, v2)
print(v3)
