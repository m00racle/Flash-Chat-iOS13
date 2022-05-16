//
//  WelcomeViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // animate welcome text
        // put the titleText to empty first
        titleLabel.text = ""
        let welcomeText = "⚡️FlashChat"
        var delayMultiplier = 0.0
        //Algorithm start:
        // use for in loop to loop each letter(symbol) in the welcomeText
        for letter in welcomeText {
            // put delay timer to each symbol to append to the titleLabel: UILabel
            Timer.scheduledTimer(withTimeInterval: 0.2*delayMultiplier, repeats: false, block: {(timer) in self.titleLabel.text?.append(letter)})
            // note UILabel text is a String type which has instance method append(c: char)
            // use this method to put each typed letter (after delay) to the titleLabel.text
            
            // increment multiplier to give delay to the next symbol
            delayMultiplier += 1
        }
        
       
    }
    
    
    

}
