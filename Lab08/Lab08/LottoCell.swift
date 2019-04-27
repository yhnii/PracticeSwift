//
//  LottoCell.swift
//  Lab08
//
//  Created by SWUCOMPUTER on 23/04/2019.
//  Copyright © 2019 SWUCOMPUTER. All rights reserved.
//

import UIKit

class LottoCell: UITableViewCell {

    @IBOutlet var number1: UILabel!
    @IBOutlet var number2: UILabel!
    @IBOutlet var number3: UILabel!
    @IBOutlet var number4: UILabel!
    @IBOutlet var number5: UILabel!
    @IBOutlet var number6: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
