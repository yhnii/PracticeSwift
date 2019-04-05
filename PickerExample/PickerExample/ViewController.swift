//
//  ViewController.swift
//  PickerExample
//
//  Created by SWUCOMPUTER on 02/04/2019.
//  Copyright © 2019 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet var buttonNewYear: UIButton!
    @IBOutlet var buttonMemorial: UIButton!
    @IBOutlet var buttonIndependence: UIButton!
    @IBOutlet var buttonChristmas: UIButton!
    
    let yearMonthArray: Array<String> = ["1월 1일", "6월 6일", "8월 15일", "12월 25일"]
    var started: Bool!
    
    @IBOutlet var activityIndicator: UIActivityIndicatorView!
    @IBOutlet var pickerView: UIPickerView!
    @IBOutlet var hiddenView: UIView!
    
    
    @IBAction func buttonStart(_ sender: UIButton) {
        started = true
        hiddenView.isHidden = true
        self.activityIndicator.startAnimating()
    }
    
    @IBAction func buttonHoliday(_ sender: UIButton){
        if started{
        let index = pickerView.selectedRow(inComponent: 0)
            if
                ((sender == buttonNewYear && index == 0) ||
                (sender == buttonMemorial && index == 1) ||
                (sender==buttonIndependence && index == 2) ||
                (sender==buttonChristmas && index == 3))
            {
                self.activityIndicator.stopAnimating()
                hiddenView.isHidden = false
                
            }
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        started = false
        hiddenView.isHidden = true
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            return yearMonthArray.count
        }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return yearMonthArray[row]
        }

}

