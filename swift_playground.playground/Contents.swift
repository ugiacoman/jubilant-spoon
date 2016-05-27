//: Playground - noun: a place where Uli can do his due diligence and relearn iOS dev bottom up, Cheers!

import UIKit

// constants vs variables, like C constants are handled differently by the interpretor (can increase
// performance), may or may not have different bit size -> more research....
let constant = 5
var variable = 2

// the colon refers to a type annotation
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
