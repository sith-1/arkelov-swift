let pi = 3.14159
var counter : Int
counter = 0
counter += 1
counter += 1
counter += 1
print(counter)
        /* pi = 3.9999
        $ swift let_var.swift 
        let_var.swift:8:1: error: cannot assign to value: 'pi' is a 'let' constant
        1 | let pi = 3.14159
        | `- note: change 'let' to 'var' to make it mutable
        2 | var counter : Int
        3 | counter = 0
        :
        6 | counter += 1
        7 | print(counter)
        8 | pi = 3.9999
        | `- error: cannot assign to value: 'pi' is a 'let' constant */
        
  