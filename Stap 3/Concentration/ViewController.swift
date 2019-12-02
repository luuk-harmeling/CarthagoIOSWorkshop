//
//  ViewController.swift
//  Concentration
//
//  Created by Luuk Harmeling on 28/10/2019.
//  Copyright © 2019 CarthagoICT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Initialiseer de game (concentration.swift)
    // We hebben in de button array 12 kaarten, maar om
    private lazy var game = Concentration(numberOfPairsOfCards: buttonArray.count / 2)
    
    
    var flipCount: Int = 0{
        didSet {
            flipCountLabel.text = "Flips: \(flipCount)"
        }
    }
    
    @IBOutlet weak var flipCountLabel: UILabel!

    
    @IBOutlet var buttonArray: [UIButton]!

    //Nieuw in stap 3
    //emojiChoices is een selectie emojis die gekoppeld worden aan kaarten middels de private func emoji
    var emojiChoices: Array<String> = ["🦇","🏓","👙","🚽","🏏","🥊","🥋","🏹","🥅"]
    private var emoji = [Int:String]()
    
    
    @IBAction func touchCard(_ sender: UIButton) {
        //TODO::(3.1)
        //Haal de index van de geselecteerde kaart op uit de buttonArray hierboven
        //Ga alleen de interactie aan wanneer de kaart niet leeg is (hint optional if let)
            //
    }
    

     func updateViewFromModel() {
        for index in buttonArray.indices {
             let button = buttonArray[index]
             let card = game.cards[index]
             if(card.isFaceUp) {
                 button.setTitle(emoji(for: card), for: UIControl.State.normal)
                 button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
             } else {
                 button.setTitle("", for: UIControl.State.normal)
                 button.backgroundColor = card.isMatched ? #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0) : #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)
             }
         }
     }
     
     
    func emoji(for card: Card) -> String {
        if emoji[card.identifier] == nil, emojiChoices.count > 0 {
                let randomIndex = Int(arc4random_uniform(UInt32(emojiChoices.count)))
                emoji[card.identifier]  = emojiChoices.remove(at: randomIndex)
        }
        
        return emoji[card.identifier] ?? "?"
    }

}

