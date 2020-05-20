//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation // Sound module

class ViewController: UIViewController {

    // Create an instance of the audio object
    var player = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // Checks for each button tag number and passes its label string
    @IBAction func keyPressed(_ sender: UIButton) {

        playSound(input: (sender.titleLabel?.text)!)
        
        // Changes opacety when the user clicks the button
        sender.alpha = 0.5
        
        // Code should execute after 0.2 second delay.
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            //Bring's sender's opacity back up to fully opaque.
            sender.alpha = 1.0
        }
    }
    
    func playSound(input : String) {
        // Gets a refrence to the audio file
        // Passes user input
        let url = Bundle.main.url(forResource: input, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
        

    }
    
    

}

