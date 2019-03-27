//
//  SegViewController.swift
//  SeguePractice
//
//  Created by SWUCOMPUTER on 26/03/2019.
//  Copyright © 2019 SWUCOMPUTER. All rights reserved.
//

import UIKit

class SegViewController: UIViewController {
    @IBOutlet var leftRightViewController: UISegmentedControl!
    @IBOutlet var displayLabel: UILabel!
    var selectedSegmentIndex: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        var makeString = leftRightViewController.titleForSegment(at: selectedSegmentIndex)!
        
        displayLabel.text = makeString
        leftRightViewController.selectedSegmentIndex = selectedSegmentIndex
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
