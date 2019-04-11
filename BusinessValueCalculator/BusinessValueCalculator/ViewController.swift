//
//  ViewController.swift
//  BusinessValueCalculator
//
//  Created by SWUCOMPUTER on 11/04/2019.
//  Copyright © 2019 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet var companyNameLabel: UILabel!
    @IBOutlet var listedStatusLabel: UILabel!
    @IBOutlet var inputTextField: UITextField!
    @IBOutlet var pickerListedStatus: UIPickerView!
   
    let listedStatus: [String] = ["상장 기업", "비상장 기업"]
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // button for searching company name
    @IBAction func buttonCompanyName(_ sender: UIButton) {
        companyNameLabel.text = inputTextField.text
    }
    
    // button for get value by picker
    @IBAction func getValue() {
        let status: String = listedStatus[self.pickerListedStatus.selectedRow(inComponent: 0)]
        listedStatusLabel.text = status
    }
    
    // option for textField
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    // options for custom picker
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return listedStatus.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return listedStatus[row]
    }
    
    override func prepare(for segue:UIStoryboardSegue, sender:Any?){
    let destination = segue.destination
    let button = sender as! UIButton
        destination.title = button.titleLabel?.text
        
    }


}

