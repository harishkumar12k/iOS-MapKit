//
//  ViewController.swift
//  iOS-MapKit
//
//  Created by Harish Kumar on 23/05/22.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    
    @IBOutlet weak var fullScreenMapView: MKMapView!
    @IBOutlet weak var cubbonParkButton: UIButton!
    @IBOutlet weak var mgRoadButton: UIButton!
    @IBOutlet weak var krMarketButton: UIButton!

    @IBAction func showCubbonPark(_ sender: UIButton) {
        removeAllAnnotations()
        
        setOnMapView(lat: 12.9763602, long: 77.5929095, title: "Cubbon Park", subTitle: "Bangalore")
    }
    
    @IBAction func showMGRoadPark(_ sender: UIButton) {
        removeAllAnnotations()
        
        setOnMapView(lat: 12.9747118, long: 77.6072206, title: "MG Road", subTitle: "Bangalore")
    }
    
    @IBAction func showKRMarketPark(_ sender: UIButton) {
        removeAllAnnotations()
        
        setOnMapView(lat: 12.965121, long: 77.5753513, title: "KR Market", subTitle: "Bangalore")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func removeAllAnnotations() {
        let allAnnotations = self.fullScreenMapView.annotations
        self.fullScreenMapView.removeAnnotations(allAnnotations)
    }

    func setOnMapView(lat: Double, long: Double, title: String, subTitle: String) {
        let location = CLLocationCoordinate2D(latitude: lat, longitude: long)
        
        let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        let region = MKCoordinateRegion(center: location, span: span)
        fullScreenMapView.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = title
        annotation.subtitle = subTitle
        fullScreenMapView.addAnnotation(annotation)
    }
}

