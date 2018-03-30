//: Playground - noun: a place where people can play

import Cocoa

protocol Cat {
    var name : String { get }
    var age : Int { get }
    }

protocol CatType {
    var species : String { get }
}

extension Cat where Self: CatType {
    var name : String { return "Franek" }
}

protocol CatSound {
    func meow (sound: String)
}

struct pet : Cat, CatSound {
    var name : String
    var age: Int { return 4 }
    func meow(sound: String) {
        print(sound)
    }
}
var animal = pet(name: "Teodor")
print (animal.name)
print (animal.age)
print (animal.meow(sound: "Blurp"))

struct feral : Cat {
    var name: String = "Max"
    var age: Int = 2
}

var animal1 = feral()
print ( animal1.name)
print (animal1.age)
animal1.name = "Joey"
animal1.age = 10
print (animal1.name)
print (animal1.age)


struct wild : Cat, CatType {
    var species: String = "Lion"
    var age : Int = 20
}

var beast = wild()
print (beast.name)
print (beast.age)
print (beast.species)


func checkAge (myAge : Int) -> String {
    if myAge >= 21 {
        return "Legal"
    } else {
        return "UInderage"
    }
}

var text : String
var myAge : Int
myAge = 32
text = checkAge(myAge: myAge)

extension Int {
    var name: String {
        return text
    }
}
var status = myAge.name
print (myAge)
print (status)

myAge = 16
text = checkAge(myAge: myAge)
status = myAge.name
print (myAge)
print (status)
