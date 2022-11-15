//
//  ViewController.swift
//  button
//
//  Created by Student on 09/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func btnAction(_ sender: Any)
    {
        if(didbtn)
        {
            myView.backgroundColor = UIColor.cyan
            didbtn = false
        }
        else
        {
            myView.backgroundColor = UIColor.brown
            didbtn = true
        }
                       
    }
    @IBOutlet var myView: UIView!
    var didbtn  = true
    @IBOutlet weak var btntext: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

