//
//  Card.swift
//  Concentration
//
//  Created by Luuk Harmeling on 04/10/2019.
//  Copyright © 2019 CarthagoICT. All rights reserved.
//

import Foundation

struct Card {
    
    var identifier: Int
    var isFaceUp  = false
    var isMatched = false
    
    static var identifierFactory = 0
    
    static func getUniqueIdentifier() -> Int {
        identifierFactory += 1
        return identifierFactory;
    }
    
    init() {
        self.identifier = Card.getUniqueIdentifier()
    }
}
