//
//  ViewController.swift
//  Calculate
//
//  Created by SWUCOMPUTER on 12/03/2019.
//  Copyright © 2019 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var displayLabel: UILabel!
    @IBAction func buttonPress(_ sender: UIButton) {
        let entered: String! = sender.titleLabel?.text
        let current: String! = displayLabel.text
        
        displayLabel.text = "0"
        displayLabel.text = current + entered
        if entered == "C"{
            displayLabel.text = "0"
        }
        if current == "0" {
            displayLabel.text = entered
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

