//
//  MemoryGame .swift
//  Memorize
//
//  Created by 박인혁 on 2023/02/03.
//

import Foundation

struct MemoryGame<CardContent>{
    var cards : Array<Card>
    
    func choose (_ card : Card){
        
    }
    
    struct Card{
        var isFaceUp:Bool
        var isMatched:Bool
        var content: CardContent
        
    }
}
