//
//  ResultViewController.swift
//  BusinessValueCalculator
//
//  Created by SWUCOMPUTER on 11/04/2019.
//  Copyright © 2019 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet var infoLabel: UILabel!
    @IBOutlet var hiddenView: UIView!
    
    var info: String? // info == company
    var pickerInfo: Int?
    let company: [String] = ["삼성전자", "현대자동차"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if pickerInfo == 0{
            hiddenView.isHidden = false
            if let contentString = info{
                infoLabel.text = contentString + " 주가에 대한 정보"
                if company[0] == contentString{
                    
                    
                    
                }else if company[1] == contentString{
                    
                    
                }
            }
        }else{
            hiddenView.isHidden = true
            if let contentString = info{
                infoLabel.text = contentString
            }
        }
    }
}
