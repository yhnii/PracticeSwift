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
    var originalNumbers = Array (1 ... 45)
    
    
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
        
        if lottoArrays.isEmpty {
        cell.number1.text = "0"
        cell.number2.text = "0"
        cell.number3.text = "0"
        cell.number4.text = "0"
        cell.number5.text = "0"
        cell.number6.text = "0"
        }
        else{
        cell.number1.text = String(lottoArrays[indexPath.row][0])
        cell.number2.text = String(lottoArrays[indexPath.row][1])
        cell.number3.text = String(lottoArrays[indexPath.row][2])
        cell.number4.text = String(lottoArrays[indexPath.row][3])
        cell.number5.text = String(lottoArrays[indexPath.row][4])
        cell.number6.text = String(lottoArrays[indexPath.row][5])
        }
        
        return cell
    }
    

    @IBAction func doDraw(_ sender: UIBarButtonItem) {
        var index = 0
        var lottoArray = Array<Int>()
        
        lottoArrays.removeAll()
        
        
        for _ in 0 ... 3 {
            lottoArray.removeAll()
            for _ in 0 ... 5 {
                index = Int(arc4random_uniform(UInt32(originalNumbers.count)))
                lottoArray.append(originalNumbers[index])
                originalNumbers.remove(at: index)
            }
            originalNumbers = Array (1 ... 45)
            lottoArray.sort(by: {$0 < $1})
            lottoArrays.append(lottoArray)
        }
        
    lottoTableView.reloadData()
    }
    
    
}


