let dev1: Set = ["Swift", "Python", "Git", "SQL", "Docker"]
let dev2: Set = ["Python", "JavaScript", "Git", "React", "Docker"]

let commondSkills = dev1.intersection (dev2)
print (" Общие: \(commondSkills)")

let uniqueToDev1 = dev1.subtracting(dev2)
print("Уникальные dev1: \(uniqueToDev1)")

let uniqueToDev2 = dev2.subtracting(dev1)
print("Уникальные dev2: \(uniqueToDev2)")

let allSkills = dev1.union(dev2)
print("Все вместе : \(allSkills)")



let raw = [5, 3, 1, 3, 2, 5, 4, 1, 2, 4]
let uniqueSorted = Array(Set(raw)).sorted()
print("Уникальные (отсортированные): \(uniqueSorted)")

let setFromRaw = Set(uniqueSorted)
let checkSet : Set = [1,2,3]

let isSuperset = setFromRaw.isSuperset(of: checkSet)
print("Является надмножеством [1, 2, 3]: \(isSuperset)")

