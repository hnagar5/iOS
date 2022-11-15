//
//  ViewController.swift
//  musicplayer
//
//  Created by Student on 12/11/22.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {
    var player = AVAudioPlayer().self

    @IBAction func PlayEvent(_ sender: UIButton)
    {
        player.play();
    }
    
    @IBAction func PauseEvent(_ sender: UIButton)
    {
        player.pause();
        
    }
    
    @IBAction func Reset(_ sender: UIButton)
    {
        player.currentTime;
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        do
        {
            let audioPath =  Bundle.main.path(forResource:"tujaanena" , ofType: ".mp3")
            try player = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)
        }
        catch
        {
            ///Error
        }
    }


}

