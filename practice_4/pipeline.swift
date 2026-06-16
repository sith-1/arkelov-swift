import Foundation

typealias  Transform = (String) -> String

func trimWhitespace(_ input: String) -> String {
    return input.trimmingCharacters(in: .whitespacesAndNewlines)
}

func lowercase(_ input: String) -> String {
    return input.lowercased()
}

func removeDigits (_ input : String) -> String { 
    return input.filter { !$0.isNumber}
}

func replaceSpaces(with replacement : Character) -> Transform {
    return {input in 
        //заменяем каждый пробел на указанный символ
        return input.map{ $0 == " " ? replacement : $0}.map { String($0)}.joined()
    }
}

// MARK функция конвейера. Применяет массив трансформаций к входной строке пользователя
func pipeline(_ input: String, transforms : [Transform]) -> String {
    var result = input
    for transform in transforms {
        result = transform(result)
    }
    return result
}

let input = "  Hello World 123  "

let result = pipeline(input, transforms: [
    trimWhitespace,
    lowercase,
    removeDigits,
    replaceSpaces(with: "-")
])

print(result)  // hello-world-

func makePipeline (_ transforms: [(String)-> String]) -> (String) -> String {
    return { input in 
        var result = input
        for transform in transforms {
            result = transform(result)
        }
        return result
    }
}

let clean = makePipeline([trimWhitespace, lowercase]) 
print(clean("  HeLLo  "))
