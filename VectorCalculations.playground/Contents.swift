//: Playground - noun: a place where people can play

import Cocoa

class Vector2 {
    var x: Float
    var y: Float
    init(x: Float, y: Float){
        self.x = x
        self.y = y
    }
    func length() -> Float {
        return sqrtf(self.x*self.x + self.y*self.y)
    }
    func angle(with v: Vector2) -> Float {
        let degperrad : Float  = Float(180 / Double.pi)
        var dot : Float {
           return self.x * v.x + self.y * v.y
        }
        return acosf( dot/( self.length()*v.length() ) )*degperrad
    }
}

extension Vector2 {
    func normalize() -> Vector2 {
        let normalized = Vector2(x:0, y:0)
        normalized.x = self.x/self.length()
        normalized.y = self.y/self.length()
        return normalized
    }
}

var v1 = Vector2(x: 1, y: 0)
var v2 = Vector2(x: 0.5, y: 0.5)

print(v1.angle(with: v2))
