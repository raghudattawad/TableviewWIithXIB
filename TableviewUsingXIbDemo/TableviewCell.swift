//
//  TableviewCell.swift
//  TableviewUsingXIbDemo
//
//  Created by Raghavendra on 04/05/19.
//  Copyright © 2019 Raghavendra. All rights reserved.
//

import UIKit

class TableviewCell: UITableViewCell {

    @IBOutlet weak var imageViewDisplay: UIImageView!
  
    
    @IBOutlet weak var labelDisplay: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
