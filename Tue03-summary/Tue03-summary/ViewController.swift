//
//  ViewController.swift
//  Tue03-summary
//
//  Created by SWUCOMPUTER on 19/03/2019.
//  Copyright © 2019 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{
    @IBOutlet var displayLabel: UILabel!
    @IBOutlet var myTextField: UITextField!
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    @IBAction func buttonDisplay(_ sender: UIButton) {
        displayLabel.text = myTextField.text
    }
    
    
    @IBAction func segControlDisplay(_ sender: UISegmentedControl) {
        self.displayLabel.text = sender.titleForSegment(at: sender.selectedSegmentIndex)
    }
    
    @IBAction func switchDisplay(_ sender: UISwitch) {
        if sender.isOn{
            displayLabel.text = "Switch is on"
        }
        else{
            displayLabel.text = "Switch is off"
        }
    }
    
    @IBAction func sliderDisplay(_ sender: UISlider) {
        let anyGivenValue = Float(sender.value)
        displayLabel.text = String(format:"%10.8f", anyGivenValue)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

