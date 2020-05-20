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
        
        switch sender.tag {
        case 1:
            playSound(input: (sender.titleLabel?.text)!)
            break;
        case 2:
            playSound(input: (sender.titleLabel?.text)!)
            break;
        case 3:
            playSound(input: (sender.titleLabel?.text)!)
            break;
        case 4:
            playSound(input: (sender.titleLabel?.text)!)
            break;
        case 5:
            playSound(input: (sender.titleLabel?.text)!)
            break;
        case 6:
            playSound(input: (sender.titleLabel?.text)!)
            break;
        case 7:
            playSound(input: (sender.titleLabel?.text)!)
            break;
            
        default:
            print("Nothing was selected")
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

