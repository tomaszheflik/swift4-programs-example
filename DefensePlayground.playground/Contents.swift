//: Playground - noun: a place where people can play

import Cocoa

var test : String?
var final : String?

if let checkMe = test, let checkMe2 = final {
    print(checkMe + checkMe2)
} else {
    print ("Found NIL")
}

test = "Hello"

if let checkMe = test, let checkMe2 = final {
    print(checkMe + checkMe2)
} else {
    print ("Found NIL")
}

final = "Bye"
if let checkMe = test, let checkMe2 = final {
    print(checkMe + checkMe2)
} else {
    print ("Found NIL")
}

class Dreamer {
    var candidate : Politician?
}

class Politician {
    var name : String = ""
}
let person = Dreamer()
if let check = person.candidate?.name {
    print ("Name = \(check)")
} else {
    print ("NIL in person")
}
