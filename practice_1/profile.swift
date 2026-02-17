let name = "Амиран"
let DateBirth = 2005
let university = "SKGA"
let CourseOfStudy = 2
let GPA = 4.5
let currentYear = 2026

var age = currentYear - DateBirth
var fullYearsOfStudy = CourseOfStudy - 1
var remainingCourses = 4 - CourseOfStudy  
var graduationYear = CourseOfStudy + remainingCourses

print("╔══════════════════════════════╗")
print("║     ПРОФИЛЬ СТУДЕНТА         ║")
print("╠══════════════════════════════╣")
print("║ Имя:          \(name)         ║")
print("║ Возраст:      \(age) лет         ║")
print("║ Университет:  \(university)           ║")
print("║ Курс:         \(CourseOfStudy)              ║")
print("║ Средний балл: \(GPA)            ║")
print("╠══════════════════════════════╣")
print("║ Полных лет обучения: \(fullYearsOfStudy)       ║")
print("║ Осталось курсов:    \(remainingCourses)        ║")
print("╚══════════════════════════════╝")

print("\nСтудент \(name) завершит обучение в \(graduationYear) году")