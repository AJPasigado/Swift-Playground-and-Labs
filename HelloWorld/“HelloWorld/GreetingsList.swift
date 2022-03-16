//
//  GreetingsList.swift
//  “HelloWorld
//
//  Created by Anton John Bibit Pasigado on 18/07/2018.
//  Copyright © 2018 Anton John Pasigado. All rights reserved.
//

import Foundation

struct Greetings {
    let greeting = ["Hey, Hey man, or Hi", "How are you doing?", "How’s it going?",
                    "What’s going on?", "What’s new?", "What’s up?", "How’s life?",
                    "How are things?", "How’s everything?"]
    
    func getGreeting() -> String {
        let index = Int.random(in: 0..<greeting.count)
        return greeting[index]
    }
}
