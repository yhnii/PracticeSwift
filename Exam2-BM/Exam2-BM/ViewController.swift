//
//  ViewController.swift
//  Exam2-BM
//
//  Created by SWUCOMPUTER on 15/04/2019.
//  Copyright © 2019 SWUCOMPUTER. All rights reserved.
// 2014110521 경영 이영현

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet var pickerNumbers: UIPickerView!
    
    var numberArray: [Int] = [1,2,3,4,5,6,7,8,9]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "정수 선택"
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return numberArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return  String(numberArray[row])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ImageViewController.swift"{
            let destination = segue.destination as! ImageViewController
            let num = pickerNumbers.selectedRow(inComponent: 0)
            print(num)
            destination.numberPassed = (num)
            
        }
    }

}

