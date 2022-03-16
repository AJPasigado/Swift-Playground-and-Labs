//: Playground - noun: a place where people can play

import UIKit


// For the first Problem

func hexToRGB (colorHex: String) -> (UInt8, UInt8, UInt8) {
    var hex = colorHex
    hex.remove(at: hex.startIndex)
    let rgb: UInt32 = UInt32(hex, radix: 16)!
    return (UInt8((rgb>>16)&0x0000FF),UInt8((rgb>>8)&0x0000FF),UInt8(rgb&0x0000FF))
}

func rgbToHex (red: UInt8, green: UInt8, blue: UInt8) -> String {
    let total = UInt32(red)<<16 + UInt32(green)<<8 + UInt32(blue)
    return ("#" + String (total, radix: 16).uppercased())
}

print(hexToRGB(colorHex: "#FF0000"))
print(rgbToHex(red: 255, green: 00, blue: 0))


// For the second problem

func numberOfSteps (base: Int) -> Int {
    if (base + 1 == 0) { return 0 }
    else if (base + 1 == 1) { return 1 }
    else {  return numberOfSteps(base: base - 1 ) + numberOfSteps(base: base - 2 ) }
}

print(numberOfSteps(base: 5))
print(Int("dsd"))
