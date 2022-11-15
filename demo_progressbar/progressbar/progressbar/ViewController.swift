//RKU
//  ViewController.swift
//  progressbar
//Harsh Nagar
//  Created by Student on 11/11/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var btn: UIButton!
    
    @IBOutlet weak var progrressview: UIProgressView!
    var isRed = false
    var progressBarTimer : Timer!
    var isRunning = false
    
    @IBAction func ActionProgressbar(_ sender: Any)
    {
        
            if(isRunning)
            {
                progressBarTimer.invalidate()
                btn.setTitle("Start", for: .normal)
            }
            else
            {
                btn.setTitle("Stop", for: .normal)
                progrressview.progress = 0.0
                self.progressBarTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.updateProgressView), userInfo: nil, repeats: true)
                if(isRed)
                {
                    progrressview.progressTintColor = UIColor.red
                    progrressview.progressViewStyle = .default
                }
                else
                {
                    progrressview.progressTintColor = UIColor.red
                    progrressview.progressViewStyle = .bar
                }
                isRed = !isRed
            }
            isRunning = !isRunning
        
    }
    @objc func updateProgressView()
    {
        progrressview.progress += 0.2
        progrressview.setProgress(progrressview.progress, animated: true)
        if(progrressview.progress == 1.0)
        {
            progressBarTimer.invalidate()
            isRunning = false
            btn.setTitle("Start", for: .normal)
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        progrressview.progress = 0.0
    }


}

