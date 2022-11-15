//Harsh Nagar
//  ViewController.swift
//  Stackview
//
//  Created by Student on 16/11/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        createStackview()
        
    }
    func createStackview(){
        
        let imageView = UIImageView()
        imageView.backgroundColor = .systemGreen
        imageView.image = UIImage(systemName : "message")
        imageView.contentMode = .scaleAspectFit
        //imageView.widthAnchor.constraint(equalToConstant: view.frame.size.width/2).isActive = true
        //imageView.heightAnchor.constraint(equalToConstant: view.frame.size.height).isActive = true
        let label = UILabel()
        label.backgroundColor = .systemBlue
        label.text = "Harsh Nagar"
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 21, weight: .bold)
        
        let label2 = UILabel()
        label2.backgroundColor = .systemOrange
        label2.text = "IT Consultant"
        label2.textAlignment = .center
        label2.font = .systemFont(ofSize: 21, weight: .bold)
        //label.widthAnchor.constraint(equalToConstant: view.frame.size.width).isActive = true
        //label.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        let stackView = UIStackView(arrangedSubviews: [imageView, label, label2])
        stackView.frame = view.bounds
        stackView.backgroundColor = .systemYellow
        
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 20
        
        view.addSubview(stackView)
    }

}

