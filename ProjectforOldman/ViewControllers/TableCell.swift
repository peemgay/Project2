//
//  TableCell.swift
//  SearchBarInTable
//
//  Created by Xiaodan Wang on 10/20/17.
//  Copyright © 2017 Xiaodan Wang. All rights reserved.
//

import UIKit

class TableCell: UITableViewCell {
    @IBOutlet var imgVIew2: UIImageView!
     @IBOutlet var nameLBL2: UILabel!
    @IBOutlet var price: UILabel!
    @IBOutlet var location: UILabel!

    @IBOutlet var locationLBL: UILabel!
    @IBOutlet var imgView: UIImageView!
    @IBOutlet var nameLbl: UILabel!
    @IBOutlet var categoryLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
