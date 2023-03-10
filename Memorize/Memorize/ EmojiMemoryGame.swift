//
//   EmojiMemoryGame.swift
//  Memorize
//
//  Created by λ°μΈν on 2023/02/06.
//

import SwiftUI



 
class EmojiMemoryGame{
    static let  emojis = ["π","π","π","π","π","π","π«","π","π","π§","π½","π","π₯","π₯¦","π§","π«","π","π­","π§","π₯©","π","π"]

    static func createMemoryGame() -> MemoryGame<String>{
        MemoryGame(numberOfPairsOfCards: 4){
            pairIndex in EmojiMemoryGame.emojis[pairIndex]
        }
    }
    
    private var model : MemoryGame<String> =
        MemoryGame<String>.init(numberOfPairsOfCards: 4) {pairIndex in
            emojis[pairIndex]
            
        }
    
    var cards : Array<MemoryGame<String>.Card>{
        return model.cards
    }
    
}

