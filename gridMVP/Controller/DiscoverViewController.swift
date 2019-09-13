//
//  DiscoverViewController.swift
//  gridMVP
//
//  Created by Max Gillespie on 9/13/19.
//  Copyright © 2019 Max Gillespie. All rights reserved.
//

import Foundation
import UIKit
import MapKit

class DiscoverViewController: UIViewController {
    
    @IBOutlet weak var MapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.mapLocationUpdate(latitude: 40.4406, longitude: -79.9959, title: "")
    }
    
    func mapLocationUpdate(latitude: Double, longitude: Double, title: String) {
        let location = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        self.centerMapOnLocation(location: location, title: title)
    }
    
    func centerMapOnLocation(location: CLLocationCoordinate2D, title: String) {
        let coordinateRegion = MKCoordinateRegion(center: location, span: MKCoordinateSpan(latitudeDelta: 0.15, longitudeDelta: 0.15))
        self.MapView.setRegion(coordinateRegion, animated: false)
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = title
        self.MapView.addAnnotation(annotation)
    }
    
}
