//
//  ViewController.swift
//  Concentration
//
//  Created by Luuk Harmeling on 28/10/2019.
//  Copyright © 2019 CarthagoICT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Deze variabele registreert de hoeveelheid flips
    var flipCount: Int = 0{
        didSet {
            flipCountLabel.text = "Flips: \(flipCount)"
        }
    }
    
    // Deze variabele representeert de score
    @IBOutlet weak var flipCountLabel: UILabel!

    

    @IBAction func touchCard(_ sender: UIButton) {
      //TODO (1.2)
      //Koppel deze functie aan de kaart-button d.m.v. Drag & Drop
      //Roep de onderstaande flipCard functie aan met de juiste parameters
    }
    
    //TODO (1.3):: Maak een functie voor een tweede kaart en koppel deze aan de storyboard (kaart) en flipCard functie.
    
    //Deze functie draait, = op basis van de emoji (text) variable welke kant van de kaart getoont moet worden (de "flip" van de kaart)
    func flipCard(withEmoji emoji: String, on button: UIButton) {
        //Draait de kaart op zijn kop
        if button.currentTitle == emoji {
            button.setTitle("", for:  UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        } else {
            //TODO (1.2)
            //Draai de kaart terug naar de oorspronkelijke staat
        }
    }

    
}

