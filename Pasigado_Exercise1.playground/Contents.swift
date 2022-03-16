//: Playground - noun: a place where people can play

import UIKit

print ()
print("==============")
print ("For Problem 1:")
print("==============")

var number = 7
var lastNumber = number - (number/10)*10
while number > 10 {
    number/=10
}
print("First digit is \(number).")
print("Last digit is \(lastNumber)")






print ()
print("==============")
print ("For Problem 2:")
print("==============")

let n = 15
var totalFoo = 0
var totalBar = 0
var totalFooBar = 0

for num in 1...n{
    if (num % 3 == 0 && num % 5 == 0){
        print ("\(num) FooBar")
        totalFooBar += 1
    } else if (num % 3 == 0) {
        print ("\(num) Foo")
        totalFoo += 1
    } else if (num % 5 == 0) {
        print ("\(num) Bar")
        totalBar += 1
    }
}
print ("Total Foo = \(totalFoo)")
print ("Total Bar = \(totalBar)")
print ("Total FooBar = \(totalFooBar)")





print ()
print("==============")
print ("For Problem 3:")
print("==============")

print ()
print ("Ladder:")
let width = 10
for line in 1...width {
    for _ in 1...line {
        print("* ", terminator:"")
    }
    print()
}

print ()
print ("Greater Than:")
for line in 1...width {
    for _ in 1...line {
        print("  ", terminator:"")
    }
    print("* ")
}
for line in 2...width {
    for _ in 0...(width - line) {
        print("  ", terminator:"")
    }
    print("* ")
}

print ()
print ("Less Than:")
for line in 1...width {
    for _ in 0...(width - line) {
        print("  ", terminator:"")
    }
    print("* ")
}
for line in 2...width {
    for _ in 1...line {
        print("  ", terminator:"")
    }
    print("* ")
}

