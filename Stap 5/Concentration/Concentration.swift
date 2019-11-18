//
//  Concentration.swift
//  Concentration
//
//  Created by Luuk Harmeling on 04/10/2019.
//  Copyright © 2019 CarthagoICT. All rights reserved.
//

import Foundation

class Concentration {
    
    var numberOfPairs: Int = 0
    var matchedPairsCount: Int = 0
    var cards = Array<Card>()
    var indexOfOneAndOnlyOneFaceUpCard : Int?
    
    func chooseCard(at index: Int) {
        if !cards[index].isMatched {
            if let matchIndex = indexOfOneAndOnlyOneFaceUpCard, matchIndex != index {
                if(cards[matchIndex].identifier == cards[index].identifier){
                    cards[matchIndex].isMatched = true
                    cards[index].isMatched = true
                    matchedPairsCount += 1
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
    
    func allCardsAreMatched() -> Bool {
        return numberOfPairs == matchedPairsCount
    }
    
    init(numberOfPairsOfCards: Int) {
        numberOfPairs = numberOfPairsOfCards
        for _ in 0..<numberOfPairsOfCards {
            let card = Card()
            cards += [card, card]
        }
        cards.shuffle()
        
    }
    
}
