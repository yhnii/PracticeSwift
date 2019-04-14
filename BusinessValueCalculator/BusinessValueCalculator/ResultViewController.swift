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

    @IBOutlet var rf: UILabel!
    @IBOutlet var rm: UILabel!
    @IBOutlet var re: UILabel!
    @IBOutlet var iRate: UILabel!
    @IBOutlet var WACC: UILabel!
    @IBOutlet var EnterpriseValue: UILabel!
    @IBOutlet var EquityValue: UILabel!
    @IBOutlet var StockValue: UILabel!
    @IBOutlet var todayP: UILabel!
    @IBOutlet var opinion: UILabel!
    
    var info: String? // info == company
    var pickerInfo: Int?
    let company: [String] = ["삼성전자", "두산"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if pickerInfo == 0{
            hiddenView.isHidden = false
            if let contentString = info{
                infoLabel.text = contentString + " 주가에 대한 정보"
                if company[0] == contentString{
                    rf.text = "0.02"
                    rm.text = "0.04"
                    re.text = "0.04"
                    iRate.text = "0.04"
                    WACC.text = "0.04"
                    EnterpriseValue.text = "11987450648879986.00"
                    EquityValue.text = "11975168938879986.00"
                    StockValue.text = "1762954.62"
                    todayP.text = "46850.00"
                    opinion.text = "BUY"
                }
                else if company[1] == contentString{
                    rf.text = "0.02"
                    rm.text = "0.04"
                    re.text = "0.04"
                    iRate.text = "0.07"
                    WACC.text = "0.06"
                    EnterpriseValue.text = "627070121203.34"
                    EquityValue.text = "-326358878796.66"
                    StockValue.text = "-14409.42"
                    todayP.text = "7540.00"
                    opinion.text = "SELL"
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
