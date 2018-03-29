//: Playground - noun: a place where people can play

import Cocoa

class landAnimal {
    var X : Int = 0
    func move(step: Int) {
        self.X += step
    }
}

class bird: landAnimal {
    var Y : Int = 0
    override func move(step: Int) {
        self.X += step
        self.Y += step/2
    }
}

var cat = landAnimal()

print(cat.X)
cat.move(step: 10)
print(cat.X)

var sparrow = bird()

print(sparrow.X)
print(sparrow.Y)
sparrow.move(step: 6)
print(sparrow.X)
print(sparrow.Y)

