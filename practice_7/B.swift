struct Circle {
    var radius: Double

    var area: Double {
        Double.pi * radius * radius
    }

    var diameter: Double {
        get { radius * 2 }
        set { radius = newValue / 2 }
    }
}

struct StepCounter {
    var totalSteps: Int = 0 {
        willSet {
            print("Значение изменится с \(totalSteps) на \(newValue)")
        }
        didSet {
            let added = totalSteps - oldValue
            print("Шагов добавлено: \(added). Всего: \(totalSteps).")
        }
    }
}

var c = Circle(radius: 5)
print((c.area * 100).rounded() / 100)
print(c.diameter)
c.diameter = 6
print(c.radius)

var stepper = StepCounter(totalSteps: 0)
stepper.totalSteps = 100
stepper.totalSteps = 360
