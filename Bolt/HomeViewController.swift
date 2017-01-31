//
//  HomeViewController.swift
//  Bolt
//
//  Created by dave on 1/30/17.
//  Copyright © 2017 dave. All rights reserved.
//

import Foundation
import MapKit

class HomeViewController : UIViewController {
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var StartStopButton: UIButton!

    let initialLocation = CLLocation(latitude: 34.090534, longitude: -118.330622)
    let regionRadius: CLLocationDistance = 100

    override func viewDidLoad() {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(initialLocation.coordinate,
                                                                  regionRadius * 2.0, regionRadius * 2.0)
        mapView?.setRegion(coordinateRegion, animated: true)
        mapView?.setCenter(initialLocation.coordinate, animated: true)
    }

    override func viewDidAppear(_ animated: Bool) {

    }

}
