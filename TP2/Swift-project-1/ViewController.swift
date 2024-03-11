//
//  ViewController.swift
//  Swift-project-1
//
//  Created by user on 2/15/24.
//  Copyright © 2024 Abdelghani El Mouak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var colorZone: UIView!
     var stepper: UIStepper!
     var colors: [UIColor] = [.systemTeal, .cyan, .lightGray, .blue] // Define your colors here
     var currentColorIndex = 0
     
     override func viewDidLoad() {
         super.viewDidLoad()
         
         // Create a view for the color zone
         colorZone = UIView(frame: CGRect(x: 100, y: 200, width: 200, height: 200))
         colorZone.backgroundColor = colors[currentColorIndex] // Set initial color
         view.addSubview(colorZone)
         
         // Create a stepper
         stepper = UIStepper(frame: CGRect(x: 150, y: 450, width: 100, height: 50))
         stepper.minimumValue = 0
         stepper.maximumValue = Double(colors.count - 1)
         stepper.stepValue = 1
         stepper.addTarget(self, action: #selector(stepperValueChanged), for: .valueChanged)
         view.addSubview(stepper)
     }
     
     @objc func stepperValueChanged() {
         let index = Int(stepper.value)
         colorZone.backgroundColor = colors[index]
     }
    
    
    
}

