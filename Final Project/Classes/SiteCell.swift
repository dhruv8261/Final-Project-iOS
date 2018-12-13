//
//  SiteCell.swift
//  Week 12 Application 2 Tables
//
//  Created by Xcode User on 2018-12-03.
//  Copyright © 2018 Sheridancollege. All rights reserved.
//

import UIKit

class SiteCell: UITableViewCell {

    
    @IBOutlet var primaryLabel: UILabel!
    @IBOutlet var secondaryLabel: UILabel!
    @IBOutlet var myImageView: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
