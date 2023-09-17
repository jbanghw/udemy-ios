//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    let eggTimes : [String: Int] = [
        "Soft": 3,
        "Medium": 4,
        "Hard": 7,
    ]
    
    var secondsRemaining: Int = 60
    var totalTime: Int = 60
    var timer = Timer()
    var player: AVAudioPlayer!
    
    @objc func updateCounter() {
        progressBar.progress = 1.0 - Float(secondsRemaining) / Float(totalTime)
        
        if secondsRemaining > 0 {
            secondsRemaining -= 1
        } else {
            timer.invalidate()
            topLabel.text = "Done."
            playSound()
        }
        
    }
    
    func playSound() {
        let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.volume = 0.05
        player.play()
    }
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        timer.invalidate()
        
        let hardness = sender.currentTitle!
        
        topLabel.text = hardness
        secondsRemaining = eggTimes[hardness]!
        totalTime = eggTimes[hardness]!
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
        
    }
    
}
