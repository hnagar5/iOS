//
//  ViewController.swift
//  Table_View
//
//  Created by Student on 13/11/22.
//

import UIKit
class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var imagesown = ["p1","p2","p3"]
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return (imagesown.count)
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! myViewCell
        cell.myImage.image = UIImage(named: (imagesown[indexPath.row]+".jpeg"))
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

