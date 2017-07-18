//
//  WPExtraTableViewCell.swift
//  WhitePages
//
//  Created by marcosgn1 on 7/17/17.
//  Copyright © 2017 Marcos Garcia. All rights reserved.
//

import UIKit

class WPExtraTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imgDetail: UIImageView!
    @IBOutlet weak var titleDetail: UILabel!
    @IBOutlet weak var subtitleDetail: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
