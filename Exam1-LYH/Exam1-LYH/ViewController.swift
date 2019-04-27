//
//  ViewController.swift
//  Exam1-LYH
//
//  Created by SWUCOMPUTER on 15/04/2019.
//  Copyright © 2019 SWUCOMPUTER. All rights reserved.
// 2014110521 Business Administration 이영현

import UIKit

class ViewController: UIViewController {
    @IBOutlet var labelBinary: UILabel!
    @IBOutlet var labelDecimal: UILabel!
    @IBOutlet var labelStatus: UILabel!
    @IBOutlet var activityIndicator: UIActivityIndicatorView!
    
    var started: Bool!
    
    func invert(givenIndex: Int){
        var scanIndex: Int = 0
        var invertString: String! = ""
        for char in labelBinary.text!{
            var resultChar: Character = char
            if (scanIndex == givenIndex){
                if (char == "0"){
                    resultChar = "1"
                }else{
                    resultChar = "0"
                }
            }
            invertString.append(resultChar)
            scanIndex += 1
        }
        labelBinary.text = invertString
    }
    
 
    @IBAction func buttonStart() {
        started = true
        self.activityIndicator.startAnimating()
    }
    
    @IBAction func buttonNumber(_ sender: UIButton) {
        if started {
        let num: String! = sender.titleLabel?.text
        invert(givenIndex: Int(num)!)
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        started = false
    }


}

