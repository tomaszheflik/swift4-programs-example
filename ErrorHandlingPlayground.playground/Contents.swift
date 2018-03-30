//: Playground - noun: a place where people can play

import Cocoa

enum ageError : Error {
    case negativeAge
    case unrealAge
    case underAge
}

func checkAge(myAge : Int) throws {
    print (myAge)
    
    guard myAge > 0 else {
        throw ageError.negativeAge
    }
    
    guard myAge <= 140 else {
        throw ageError.unrealAge
    }
    
    guard myAge > 21 else {
        throw ageError.underAge
    }
}

var currentAge = 13

do {
    try checkAge(myAge: currentAge)
} catch ageError.negativeAge {
    print("Negative Age")
} catch ageError.unrealAge {
    print ("Unreal Age")
} catch ageError.underAge {
    print ("Under Age")
}

print(currentAge)
