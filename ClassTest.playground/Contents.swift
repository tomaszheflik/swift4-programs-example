//: Playground - noun: a place where people can play

import Cocoa

class Worke {
    var name = ""
    var ID = 0
    var salary = 0
}

class Executives {
    var name : String
    var ID : Int
    var salary : Int
    init(name: String, ID: Int, salary: Int){
        self.name = name
        self.ID = ID
        self.salary = salary
    }
}

var worker = Worke()
worker.name = "Bartek Heflik"
worker.ID = 200
worker.salary = 10000

var executive = Executives(name: "Tomasz Heflik", ID: 100, salary: 50000)

print(worker.name)
print(worker.ID)
print(worker.salary)
print(executive.name)
print(executive.ID)
print(executive.salary)
