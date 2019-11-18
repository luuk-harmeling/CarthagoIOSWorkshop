//
//  Concentration.swift
//  Concentration
//
//  Created by Luuk Harmeling on 04/10/2019.
//  Copyright © 2019 CarthagoICT. All rights reserved.
//

import Foundation

class Concentration {
    
    var cards = Array<Card>()
    var indexOfOneAndOnlyOneFaceUpCard : Int?
    
    func chooseCard(at index: Int) {
        if !cards[index].isMatched {
            if let matchIndex = indexOfOneAndOnlyOneFaceUpCard, matchIndex != index {
                if(cards[matchIndex].identifier == cards[index].identifier){
                    cards[matchIndex].isMatched = true
                    cards[index].isMatched = true
                }
                cards[index].isFaceUp = true
                indexOfOneAndOnlyOneFaceUpCard = nil
            } else {
                for flipDownIndex in cards.indices {
                    cards[flipDownIndex].isFaceUp = false
                }
                cards[index].isFaceUp = true
                indexOfOneAndOnlyOneFaceUpCard = index
            }
        }
    }
    
    init(numberOfPairsOfCards: Int) {
        for _ in 0..<numberOfPairsOfCards {
            let card = Card()
            cards += [card, card]
        }
        cards.shuffle()
        
    }
    
}
