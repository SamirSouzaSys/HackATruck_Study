//
//  ViewController.swift
//  MapaManha
//
//  Created by Student on 5/25/17.
//  Copyright © 2017 SamirSouza. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, CLLocationManagerDelegate{

    @IBOutlet weak var mapView: MKMapView!
    
    var locationManager = CLLocationManager()
    
    var UserLocation = CLLocation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        mapView.showsUserLocation = true
        
        setupLocationManager()
        
        // addGesture()
    }
    
    func setupLocationManager(){
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        mapView.setRegion(`
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if locations.count > 0{
            if let location = locations.last{
                UserLocation = location
                print("A localização atual do usuário é: \(UserLocation.coordinate)")
                
            }
        }
    }
    
    func addGesture(){
        let longPress = UILongPressGestureRecognizer(target: self, action: #selector(addAnnotationToMap(gestureRecognizer:)))
        
        longPress.minimumPressDuration = 1.0
        mapView.addGestureRecognizer(longPress)
    }
    
    func addAnnotationToMap(gestureRecognizer:UIGestureRecognizer){
        let touchPoint = gestureRecognizer.location(in: mapView)
        
        let newCoordinate: CLLocationCoordinate2D = mapView.convert(touchPoint, toCoordinateFrom: mapView)
        
        let newAnnotation = MKPointAnnotation()
        
        newAnnotation.coordinate = newCoordinate
        newAnnotation.title = "HackATruck"
        newAnnotation.subtitle = String(describing: "Latitude: \(newCoordinate.latitude) / Longitude:\(newCoordinate.longitude)")
        
        mapView.addAnnotation(newAnnotation)
    }
}

