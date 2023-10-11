//
//  ViewController.swift
//  ViewsAndNavegationControls
//
//  Created by David C Santander on 09/10/23.
//

import UIKit
import WebKit
import MapKit

class ViewController: UIViewController {
    
    //Outlet
    @IBOutlet weak var myView: UIView!
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var myButton: UIButton!
    @IBOutlet weak var myWebView: WKWebView!
    @IBOutlet weak var myMap: MKMapView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        title = "My view controller"
        
        myWebView.load(URLRequest(url: URL(string: "https://google.com")!))
        myMap.centerCoordinate = CLLocationCoordinate2D(latitude: 42.6074875, longitude: -8.3132621)
    }

    //Action
    @IBAction func myButtonAction(_ sender: Any) {
        myView.isHidden = true
    }
    
    
}

