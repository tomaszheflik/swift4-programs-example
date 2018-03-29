//: Playground - noun: a place where people can play

import Cocoa

class Linia {
    var start : Int
    var stop : Int
    var odleglosc : Int {
        get {
            return stop - start
        }
        set (newValue) {
            start = newValue - 5
            stop = newValue + 10
        }
    }
    init(start: Int, stop: Int) {
        self.start = start
        self.stop = stop
    }
}

var linia = Linia(start: 15, stop: 20)
print(linia.start)
print(linia.stop)
print(linia.odleglosc)
linia.odleglosc = 20

print(linia.start)
print(linia.stop)
print(linia.odleglosc)

class Punkt {
    var X : Int
    var negX : Int {
        willSet {
            X += 100
        }
        didSet {
            X -= 50
        }
    }
    init(X: Int, negX: Int){
        self.X = X
        self.negX = negX
    }
}

var punkt = Punkt(X: 10, negX: 10)
print(punkt.X)
print(punkt.negX)
punkt.negX = 10
print(punkt.X)
print(punkt.negX)

class Counter {
    var counter = 10
    func decrement() {
        counter -= 1
    }
    func decrementByValue(step: Int) -> (step: Int, counter: Int) {
        counter -= step
        return (step: step, counter: counter)
    }
}

var myObject = Counter()
print(myObject.counter)
myObject.decrement()
print(myObject.counter)
var out = myObject.decrementByValue(step: 49)
print(myObject.counter)
print(out.counter)
print(out.step)
