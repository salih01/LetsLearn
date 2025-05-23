
/*
 
 1. Memory Leak (Bellek Sızıntısı) Nedir?
 
 
 
 
 
 */

class Company {
    var employee: Person?
}

class Person {
    var company: Company? // 🔁 DİKKAT!
    deinit {
        print("deinit: Person")
    }
}

var company: Company? = Company()
var employee: Person? = Person()

company?.employee = employee
employee?.company = company

company = nil
employee = nil


class Tursu {
    var employee: Person
}
