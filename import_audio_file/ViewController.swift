//
//  ViewController.swift
//  import_audio_file
//
//  Created by Alex on 21.01.16.
//  Copyright © 2016 Alex. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var btmPlay: UIButton!
    @IBOutlet weak var btmStop: UIButton!
    
    var sound: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = NSBundle.mainBundle().pathForResource("Let_The_Games_Begin_Hyper_Potions_Remix_", ofType: "wav")
        let soundURL = NSURL(fileURLWithPath: path!)
        
        do {
            try sound = AVAudioPlayer(contentsOfURL: soundURL)
            sound.prepareToPlay()
        } catch let err as NSError {
            print(err.debugDescription)
        }
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func playSuond(sender: UIButton) {
        sound.play()
        btmPlay.hidden = true
        btmStop.hidden = false
    }
    
    @IBAction func stopSound(sender: UIButton) {
        sound.stop()
        btmPlay.hidden = false
        btmStop.hidden = true
    }
}

