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
    @IBOutlet weak var imageView: UIImageView!
    
    var imageNumber = -1
    var messageNumber = -1
    let totalNuberOfImages = 9
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func messageButtonPressed(_ sender: UIButton) {
        let messages = ["You are awesome", "you are great", "you da bomb", "when the genious bar needs help, they call you", "fabluous? That's YOU", "You've got the design skills of Jony Ives"]
        
        var newMessageNumber: Int
        repeat {
            newMessageNumber = Int.random(in: 0...messages.count - 1)
        } while messageNumber == newMessageNumber
        messageNumber   = newMessageNumber
        messageLabel.text = messages[messageNumber]
        
        
        var newImageNumber: Int
        repeat {
            newImageNumber = Int.random(in: 0...totalNuberOfImages)
        } while imageNumber == newImageNumber
        imageNumber = newImageNumber
        imageView.image = UIImage(named: "image\(imageNumber)")


    }
    

}
