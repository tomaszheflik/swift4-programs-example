//
//  personClass.swift
//  SherifApp
//
//  Created by Tomasz Heflik on 29/03/2018.
//  Copyright © 2018 Tomasz Heflik. All rights reserved.
//

import Foundation
class Person {
    var hitPoints = 10
    func shoot() -> Int {
        let odds = 1 + Int(arc4random_uniform(3))
        if odds == 3 {
            return 1+Int(arc4random_uniform(3))
        } else {
            return 0
        }
    }
}
