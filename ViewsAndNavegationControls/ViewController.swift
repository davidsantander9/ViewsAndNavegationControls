//
//  ViewController.swift
//  ViewsAndNavegationControls
//
//  Created by David C Santander on 09/10/23.
//

import UIKit

class ViewController: UIViewController {
    
    //Outlet
    @IBOutlet weak var myView: UIView!
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var myButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //Action
    @IBAction func myButtonAction(_ sender: Any) {
        myView.isHidden = true
    }
    
    
}

