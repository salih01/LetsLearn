import UIKit

var greeting = "Hello, playground"


// MARK: - Value Types vs Reference Types (Struct vs Class Temeli)

struct Person {
    var name: String
    
    mutating func updateName(title: String) {
        name = title
    }
}

class Family {
    let name: String

    init(name: String) {
        self.name = name
        print("\(name) oluşturuldu")
    }
    
    deinit {
        print("\(name) bellekten silindi")
    }
}


func testScope() {
    let person = Person(name: "Salih")
    print(person)
    
}

testScope()

// MARK: - ARC Automatic Reference Counting
class Person2 {
    var name: String

    init(name: String) {
        self.name = name
        print("init: \(name)")
    }

    deinit {
        print("deinit: \(name)")
    }
}

var person1: Person2? = Person2(name: "Salih") // referans sayısı = 1
var person2 = person1 // referans sayısı = 2

person1 = nil // referans sayısı = 1
person2 = nil // referans sayısı = 0 → ❗️deinit çalışır



