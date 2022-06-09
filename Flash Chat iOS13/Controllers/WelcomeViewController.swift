//
//  WelcomeViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
import CLTypingLabel

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: CLTypingLabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // animate welcome text
        // put the titleText to empty first
        titleLabel.text = ""
        let welcomeText = "⚡️FlashChat"
        titleLabel.charInterval = 0.09
        // the default of char interval was 0.1 s but I want it to be a bit faster
        // but I still tested it in 1s interval to wait before the whole welcome text appears
        titleLabel.text = welcomeText
       
    }
    
    
    

}
