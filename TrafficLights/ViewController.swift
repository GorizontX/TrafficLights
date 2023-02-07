//
//  ViewController.swift
//  TrafficLights
//
//  Created by Andrey Machulin on 29.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redImageView: UIImageView!
    @IBOutlet var yellowImageView: UIImageView!
    @IBOutlet var greenImageView: UIImageView!
    
    @IBOutlet var startButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redImageView.layer.cornerRadius = 75
        yellowImageView.layer.cornerRadius = 75
        greenImageView.layer.cornerRadius = 75
        startButton.layer.cornerRadius = 10
        
        redImageView.alpha = 0.3
        yellowImageView.alpha = 0.3
        greenImageView.alpha = 0.3
        
    }
    
    @IBAction func trafficLightStarted() {
        startButton.setTitle("NEXT", for: .normal)
        
        if redImageView.alpha == 1 {
            redImageView.alpha = 0.3
            yellowImageView.alpha = 1
        } else if yellowImageView.alpha == 1 {
            yellowImageView.alpha = 0.3
            greenImageView.alpha = 1
        } else {
            greenImageView.alpha = 0.3
            redImageView.alpha = 1
        }
        
    }
    
}


