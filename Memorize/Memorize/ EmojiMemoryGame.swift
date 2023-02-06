//
//   EmojiMemoryGame.swift
//  Memorize
//
//  Created by 박인혁 on 2023/02/06.
//

import SwiftUI



 
class EmojiMemoryGame{
    static let  emojis = ["🍎","🍐","🍊","🍌","🍉","🍓","🫐","🍇","🍑","🧄","🌽","🍆","🥑","🥦","🧅","🫑","🍔","🌭","🧇","🥩","🍗","🍕"]

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

