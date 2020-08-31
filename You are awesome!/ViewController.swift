//
//  ViewController.swift
//  You are awesome!
//
//  Created by Marissa D'Antonio on 8/30/20.
//  Copyright © 2020 Marissa D'Antonio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       print("😎 viewDidLoad has run!")
        messageLabel.text = "Fabulous? That's You!"
    }

    @IBAction func messageButtonPressed(_ sender: UIButton) {
        print("😎 The message button was pressed!")
        messageLabel.text = "You Are Awesome!"
    }
    
}

