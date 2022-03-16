//
//  EmojiModel.swift
//  EmojiDictionary
//
//  Created by Anton John Bibit Pasigado on 22/08/2018.
//  Copyright © 2018 Anton John Pasigado. All rights reserved.
//

import Foundation
class Emoji {
    var symbol: Character
    var desc: String
    
    init(symbol: Character, desc:String) {
        self.symbol = symbol
        self.desc = desc
    }
}

class EmojiCategory  {
    var categoryName:String
    var emojis: [Emoji]
    
    init(categoryName:String, emojis: [Emoji]) {
        self.categoryName = categoryName
        self.emojis = emojis
    }
}

protocol EmojiDelegate {
    func addEmoji(symbol: Character, desc: String, category: String)
    func getEmojiCategories() -> [EmojiCategory]
}
