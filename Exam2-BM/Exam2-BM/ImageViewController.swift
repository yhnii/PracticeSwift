//
//  ImageViewController.swift
//  Exam2-BM
//
//  Created by SWUCOMPUTER on 15/04/2019.
//  Copyright © 2019 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {
    @IBOutlet var labelPassed: UILabel!
    @IBOutlet var labelRandom: UILabel!
    @IBOutlet var imageCandle: UIImageView!
    
    
    var numberPassed: Int = 0
    var randNum = arc4random_uniform(9)
    

    let candleOffImage = UIImage(named: "candle-off.jpg")
    let candleOnnImage = UIImage(named: "candle-on.jpg")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let numberPassed: Int = numberPassed{
            labelPassed.text = String(numberPassed)
            labelRandom.text  = String(randNum)
            
            if (numberPassed + Int(randNum))%2 == 0 {
                title = "합이 짝수입니다: Off"
                imageCandle.image = candleOffImage
                
            }else{
                //labelPassed.text = String(numberPassed)
                //labelRandom.text = String(randNum)

                title = "합이 홀수입니다: On"
                imageCandle.image = candleOnnImage
            }
        
        }
    }



}
