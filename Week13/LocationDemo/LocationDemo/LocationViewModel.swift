//
//  LocationViewModel.swift
//  LocationDemo
//
//  Created by Bennett Lee on 4/7/25.
//

import Foundation
import CoreLocation
import Observation

@Observable
class LocationViewModel : NSObject, CLLocationManagerDelegate {
    let manager = CLLocationManager()

    override init() {
        super.init()

        // Settings for DEMO purposes
        // likely you do NOT want to use this for production
        manager.distanceFilter = 0 // meters
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.delegate = self
    }

    func requestAuthorization() {
        manager.requestWhenInUseAuthorization()
        manager.startUpdatingLocation()
    }

    // Will be invoked by the location manager whenever the device has
    // moved past the distanceFilter
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        print("didUpdateLocations \(locations)")
    }

    func locationManager(_ manager: CLLocationManager, didFailWithError error: any Error) {


    }
}
