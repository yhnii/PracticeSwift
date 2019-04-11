//
//  ViewController.swift
//  BusinessValueCalculator
//
//  Created by SWUCOMPUTER on 11/04/2019.
//  Copyright © 2019 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet var inputTextField: UITextField!
    @IBOutlet var pickerListedStatus: UIPickerView!
   
    let listedStatus: [String] = ["상장", "비상장"]
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
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
        if segue.identifier == "toResultView"{
            let destination = segue.destination as! ResultViewController
            let button = sender as! UIButton
            let buttonTitle: String! = button.titleLabel?.text
            let company: String! = inputTextField.text
            let index = pickerListedStatus.selectedRow(inComponent: 0)
            
            if index == 0 {
                destination.pickerInfo = index
                destination.title = buttonTitle
                destination.info = company
            }else{
                destination.pickerInfo = index
                destination.title = buttonTitle
                destination.info = "서비스 개발중입니다"
            }

        }
    }


}

