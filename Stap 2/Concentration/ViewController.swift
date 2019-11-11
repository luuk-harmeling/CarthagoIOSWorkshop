//
//  ViewController.swift
//  Concentration
//
//  Created by Luuk Harmeling on 28/10/2019.
//  Copyright © 2019 CarthagoICT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var flipCount: Int = 0{
        didSet {
            flipCountLabel.text = "Flips: \(flipCount)"
        }
    }
    
    @IBOutlet weak var flipCountLabel: UILabel!

    @IBAction func touchCard(_ sender: UIButton) {
        flipCard(withEmoji: "🥅", on: sender)
    }
    
    
    @IBAction func touchSecondCard(_ sender: UIButton) {
         flipCard(withEmoji: "⛷", on: sender)
    }
    
    func flipCard(withEmoji emoji: String, on button: UIButton) {
        flipCount += 1
        if button.currentTitle == emoji {
            button.setTitle("", for:  UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        } else {
           button.setTitle(emoji, for:  UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }

    
}

