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
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        // Set corner radius of view to create circle
        redLightView.layer.cornerRadius = min(redLightView.frame.width, redLightView.frame.height) / 2
        yellowLightView.layer.cornerRadius = min(yellowLightView.frame.width, yellowLightView.frame.height) / 2
        greenLightView.layer.cornerRadius = min(greenLightView.frame.width, greenLightView.frame.height) / 2
    }
    
    @IBAction func switchLightDidPress() {
    }
    
    private func setupLight(for view: UIView) {
        print(view.bounds.width)
        view.layer.cornerRadius = view.bounds.width / 2
    }
}

