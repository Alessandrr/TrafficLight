//
//  ViewController.swift
//  TrafficLight
//
//  Created by Aleksandr Mamlygo on 01.05.23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    
    @IBOutlet var switchLightButton: UIButton!
    
    var isRedActive = false
    var isYellowActive = false
    var isGreenActive = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        // Set corner radius of view to create circle
        setupLight(for: [redLightView, yellowLightView, greenLightView])
    }
    
    @IBAction func switchLightDidPress() {
        if !(isRedActive || isYellowActive || isGreenActive) {
            isRedActive = true
            redLightView.alpha = 1
            return
        }
        
        if isRedActive {
            isRedActive = false
            redLightView.alpha = 0.3
            isYellowActive = true
            yellowLightView.alpha = 1
            return
        }
        
        if isYellowActive {
            isYellowActive = false
            yellowLightView.alpha = 0.3
            isGreenActive = true
            greenLightView.alpha = 1
            return
        }
        
        if isGreenActive {
            isGreenActive = false
            greenLightView.alpha = 0.3
            isRedActive = true
            redLightView.alpha = 1
            return
        }
    }
    
    private func setupLight(for views: [UIView]) {
        for view in views {
            view.layer.cornerRadius = view.frame.width / 2
        }
    }
}

