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
    private var emojiChoices: Array<String> = ["🦇","🏓","👙","🚽","🏏","🥊","🥋","🏹","🥅"]
    private var emoji = [Int:String]()
    
    @IBAction func touchCard(_ sender: UIButton) {
        //TODO::(3.1)
        //Haal de index van de geselecteerde kaart op uit de buttonArray hierboven
        //Ga alleen de interactie aan wanneer de kaart niet leeg is (hint optional if let)
            //
        flipCard(withEmoji:"🏹", on: sender)
        
    }
    
    
    func flipCard(withEmoji emoji: String, on button: UIButton) {
        flipCount += 1
        if button.currentTitle == emoji {
            button.setTitle("", for:  UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 0, green: 0.5603182912, blue: 0, alpha: 1)
        } else {
           button.setTitle(emoji, for:  UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
    
    //
   func emoji(for card: Card) -> String {
       if emoji[card.identifier] == nil, emojiChoices.count > 0 {
               let randomIndex = Int(arc4random_uniform(UInt32(emojiChoices.count)))
               emoji[card.identifier]  = emojiChoices.remove(at: randomIndex)
       }
       
       return emoji[card.identifier] ?? "?"
   }

}

