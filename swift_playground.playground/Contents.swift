//: Playground - noun: a place where Uli can do his due diligence and relearn iOS dev bottom up, Cheers!

import UIKit

// constants vs variables, like C constants are handled differently by the interpretor (can increase
// performance), may or may not have different bit size -> more research....
let constant = 5
var variable = 2

// the colon refers to a type annotation, type annotation will not actually create a string and allocate resources, just lets
// interpretor know to expect it
var str: String
str = "mr. casual"

// looks like doubles and floats need to be instantiated not just cast, doubles allow for larger precision
// Apple recommends just using Double, but if you're a baller and can count 7 significant digits, floats will
// do you good, just need to ensure number will always be <= 7 ... or just use a double
var latitude = Double()
var longitude = Float()

longitude = -86.783333
longitude = -186.783333
longitude = -1286.783333
longitude = -12386.783333
longitude = -123486.783333
longitude = 1334586.783333

// type inference vs type annotation vs hybrid
var inference = "Tim McGraw"
var annotation: String
var hybrid: String = "hello"

// Cool trick to print type of var!
// Also, funny that NSObject refers to NeXTSTEP Object
var songs: [NSObject] = ["Shake it Off", "You Belong with Me", "Back to December"]

songs.dynamicType
longitude.dynamicType
songs.append(5)

// For loops can replace i with underscore: _ if doesn't matter
for i in 1...10 {
    print("\(i) x 10 is \(i * 10)")
}

// The tutorial introduced breaks and continues, terrible programming practices, also saved 3 lines of code :D
var counter = 0

while counter != 12 {
    print("Counter is now \(counter)")
    counter += 1
}

// Returns & switch, don't need break statements because of fallthrough, also optionals!
// nil coalescing (??): "use value A if you can, but if value A is nil then use value B."
func albumsIsLogic(name: String) -> Bool? {
    switch name {
        case "Logic":
            return true
        case "The LP":
            return true
        case "":
            return nil
        default:
            return false
    }
}
var album: String = ""
let result = albumsIsLogic(album)

// enums are pretty cool

enum WeatherType {
    case Sunny
    case Rainy
    case Windy(speed: Int)
    case Cloudy
}

func getWeatherStatus(weather: WeatherType) -> String? {
    switch weather {
    case .Sunny:
        return "yay"
    case .Cloudy:
        return "bleh"
    case .Windy(let speed) where speed > 15:
        return "kinda windy"
    case .Windy(let speed) where speed < 15:
        return "maybe windy"
    case .Rainy:
        return "more bleh"
    default:
        return nil
    }
}

let status = getWeatherStatus(.Windy(speed: 20))

// Structs are pretty cool, let you have a lot of the functionality of a class, without having to create a full blown class
// private: same file as the type can rw, internal... similar -> research more
struct PersonStruct {
    static var isHuman = true
    
    var clothes: String {
        willSet {
            updateUI("I'm changing from \(clothes) to \(newValue)")
        }
        
        didSet {
            updateUI("I just changed from \(oldValue) to \(clothes)")
        }
    }
    var shoes: String
    
    func updateUI(msg: String) {
        print(msg)
    }
}

var bob = PersonStruct(clothes: "T-shirts", shoes:"nikes")
bob.clothes = "short skirts"


// Classes & methods & inheritance
// Classes are reference types, so there is only one instance of a class, for value types, such as structs, you can have multiple 
// instances
class Star {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name  //renaming here is possible
        self.age = age
    }
    
    func sing() {
        print("we are stars")
    }
}
let imma_star = Star(name: "mike", age: 26)
imma_star.sing()

class TrapStar: Star {
    var trapLevel: Int
    
    init(name: String, age: Int, trapLevel: Int) {
        self.trapLevel = trapLevel
        super.init(name: name, age: age)
    }
    
    override func sing(){
        print("we are trap stars")
    }
}

