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
    
    private var currentLight: Light = .green
    private let lightIsOff: CGFloat = 0.3
    private let lightIsOn: CGFloat = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        switchLightButton.layer.cornerRadius = 10
        
        redLightView.alpha = lightIsOff
        yellowLightView.alpha = lightIsOff
        greenLightView.alpha = lightIsOff
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        // Set corner radius of view to create circle
        setupLight(for: [redLightView, yellowLightView, greenLightView])
    }
    
    @IBAction func switchLightDidPress() {
        if switchLightButton.currentTitle == "START" {
            switchLightButton.setTitle("NEXT", for: .normal)
        }
        
        switch currentLight {
        case .red:
            redLightView.alpha = lightIsOff
            yellowLightView.alpha = lightIsOn
            currentLight = .yellow
        case .yellow:
            yellowLightView.alpha = lightIsOff
            greenLightView.alpha = lightIsOn
            currentLight = .green
        case .green:
            greenLightView.alpha = lightIsOff
            redLightView.alpha = lightIsOn
            currentLight = .red
        }
    }
    
    private func setupLight(for views: [UIView]) {
        for view in views {
            view.layer.cornerRadius = view.frame.width / 2
        }
    }
}

extension ViewController {
    enum Light {
        case red
        case yellow
        case green
    }
}
