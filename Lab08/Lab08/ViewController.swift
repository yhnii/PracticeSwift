//
//  ViewController.swift
//  Lab08
//
//  Created by SWUCOMPUTER on 23/04/2019.
//  Copyright © 2019 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    let size:Int = 4
    var lottoArrays = Array<Array<Int>>()
    var originalNumbers = Array(1 ... 45)
    
    
    @IBOutlet var lottoTableView: UITableView!
    
    func numberOfSections(in tableView: UITableView)-> Int{
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section:Int) -> Int{
        return size
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.lottoTableView.dequeueReusableCell(withIdentifier: "Lotto Cell", for: indexPath) as! LottoCell
        
        cell.number1.text = "1"
        cell.number2.text = "2"
        cell.number3.text = "3"
        cell.number4.text = "4"
        cell.number5.text = "5"
        cell.number6.text = "6"
        
        return cell
        
    }
    

    @IBAction func doDraw(_ sender: UIBarButtonItem) {
        
        
        
        for i in 0...size{
            for j in originalNumbers{
                
            }
        }
        
        lottoTableView.reloadData()
    }
    
}


