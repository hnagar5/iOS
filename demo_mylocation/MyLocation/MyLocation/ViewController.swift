//
//  ViewController.swift
//  MyLocation
//
//  Created by Student on 16/11/22.
//

import CoreLocationUI
import UIKit
import CoreLocation
import MapKit

class ViewController: UIViewController, CLLocationManagerDelegate {

    let manager = CLLocationManager()
    let mapview = MKMapView()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(mapview)
        mapview.frame = CGRect(x: 20, y: 50, width: view.frame.self.width-40, height: view.frame.size.height-220)
        manager.delegate = self
        createButton()
    }
    private func createButton(){
        let button = CLLocationButton(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        button.label = .currentLocation
        button.icon = .arrowOutline
        button.cornerRadius = 12
        button.center = CGPoint(x: view.center.x, y: view.frame.size.height-70)
        view.addSubview(button)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
    }
    @objc func didTapButton(){
        manager.startUpdatingLocation()
    }
    func locationManager(_ manager: CLLocationManager, didUpdateLocations location: [CLLocation]) {
        guard let location = location.first else{return}
        self.manager.stopUpdatingLocation()
        
        mapview.setRegion(MKCoordinateRegion(center: location.coordinate,span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)), animated: true)
    }

}

