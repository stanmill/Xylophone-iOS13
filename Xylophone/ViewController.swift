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

    @IBAction func keyPressed(_ sender: UIButton) {
        playSound()
        
    }
    
    func playSound() {
        // Gets a refrence to the audio file
        let url = Bundle.main.url(forResource: "C", withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
       
    }
    
    

}

