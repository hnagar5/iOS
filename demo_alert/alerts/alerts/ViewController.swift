//
//  ViewController.swift
//  alerts
//
//  Created by Student on 12/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func ActionShowAlert(_ sender: UIButton)
    {
        let alertController = UIAlertController(title: "Harsh Nagar", message: "Default Alert Show", preferredStyle: .alert)
        let defaultaction = UIAlertAction(title: "ok", style: .default, handler: nil)
        alertController.addAction(defaultaction)
        self.present(alertController,animated: true,completion: nil)
    }
    
    @IBAction func ActionShowAlert2(_ sender: UIButton)
    {
        let alertController = UIAlertController(title: "Harsh Nagar", message: "Default Alert Show", preferredStyle: .alert)
        
        let action1 = UIAlertAction(title: "ok", style: .default)
        {
            (action:UIAlertAction) in
            print("your have pressed ok")
            alertController.dismiss(animated: true, completion: nil)
        }
        let action2 = UIAlertAction(title: "CANCEL", style: .cancel)
        {
            (action:UIAlertAction) in
            print("your have pressed cancle")
            //alertController.dismiss(animated: true, completion: nil)
        }
        let action3 = UIAlertAction(title: "Delete", style: .destructive)
        {
            (action:UIAlertAction) in
            print("your have pressed destructive")
            //alertController.dismiss(animated: true, completion: nil)
        }
        alertController.addAction(action1)
        alertController.addAction(action2)
        alertController.addAction(action3)
        self.present(alertController,animated: true,completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

