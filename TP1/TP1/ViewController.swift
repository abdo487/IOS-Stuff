//
//  ViewController.swift
//  TP1
//
//  Created by user on 3/6/24.
//  Copyright © 2024 user. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var text: UILabel!
    @IBOutlet weak var button: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func change(_ sender: UIButton) {
        if text.text == "Bonjour" {
            text.text = "Bonsoir"
            button.setTitle("Bonjour", for: .normal)
        }else{
            text.text = "Bonjour"
            button.setTitle("Bonsoir", for: .normal)
        }
    }
    
}

