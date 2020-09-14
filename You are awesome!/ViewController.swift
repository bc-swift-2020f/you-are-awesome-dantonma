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
    
    func nonRepeatingRandom(originalNumber: Int, upperLimit: Int){
        var Number: Int
               repeat {
                   newNumber = Int.random(in: 0...upperLimit)
               } while originalNumber == newNumber
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
        
        var newSoundNumber: Int
        repeat {
            newSoundNumber = Int.random(in: 0...totalNumberOfSounds-1)
        } while soundNumber == newSoundNumber
        soundNumber = newSoundNumber
        imageView.image = UIImage(named: "image\(imageNumber)")
        
        playSound(name: "sound\(soundNumber)")


    }
    

}
