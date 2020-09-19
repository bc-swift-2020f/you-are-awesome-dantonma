//
//  ViewController.swift
//  You are awesome!
//
//  Created by Marissa D'Antonio on 8/30/20.
//  Copyright © 2020 Marissa D'Antonio. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var imageNumber = -1
    var messageNumber = -1
    var soundNumber = -1
    let totalNuberOfImages = 9
    let totalNumberOfSounds = 6
    var audioPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    func playSound(name: String){
        if let sound = NSDataAsset(name: name){
                 do {
                     try audioPlayer = AVAudioPlayer(data: sound.data)
                     audioPlayer.play()
                 } catch {
                     print("ERROR: \(error.localizedDescription)could not initialize AVAudioPlayer object.")
                 }
             } else {
                     print("ERROR: could not read data from te file sound")
             }
    }
    
    func nonRepeatingRandom(originalNumber: Int, upperLimit: Int)-> Int{
        var newNumber = Int()
        repeat {
            newNumber = Int.random(in: 0...upperLimit)
        } while originalNumber == newNumber
        return newNumber
    }
    
    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        let messages = ["You are Awesome!", "You Are Great", "You are Fantastic", "When the Genius Bar Needs Help, they call YOU", "Farbulous? That's You!", "You've Got the Design Skills of Jony Ive"]
        
        messageNumber = nonRepeatingRandom(originalNumber: messageNumber, upperLimit: messages.count-1)
        messageLabel.text = messages[messageNumber]
        
        imageNumber = nonRepeatingRandom(originalNumber: imageNumber, upperLimit: totalNuberOfImages-1)
        imageView.image = UIImage(named: "image\(imageNumber)")
        
        soundNumber = nonRepeatingRandom(originalNumber: soundNumber, upperLimit: totalNumberOfSounds-1)
        playSound(name: "sound\(soundNumber)")
    }
    

}
