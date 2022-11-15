//  Harsh Nagar
//  ViewController.swift
//  TimerProject
//
//  Created by Student on 13/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbl: UILabel!
    var time = 0
    var timertImer = Timer()
    
    @IBAction func StartEvent(_ sender: UIButton)
    {
        timertImer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.action), userInfo: nil, repeats: true)
    }
    
    @IBAction func PauseEvent(_ sender: UIButton)
    {
        timertImer.invalidate()
    }
    @IBAction func ResetEvent(_ sender: UIButton)
    {
        time = 0
        lbl.text = ("0")
    }
    @objc func action()
    {
        time += 1
        lbl.text = String(time)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

