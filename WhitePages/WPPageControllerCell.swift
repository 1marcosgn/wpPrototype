//
//  WPPageControllerCell.swift
//  WhitePages
//
//  Created by marcosgn1 on 7/16/17.
//  Copyright © 2017 Marcos Garcia. All rights reserved.
//

import UIKit

class WPPageControllerCell: UITableViewCell, UIPageViewControllerDelegate {
    
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var pageController: UIPageControl!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    @IBAction func elementUpdated(_ sender: Any) {
        
        switch pageController.currentPage {
        case 0:
            self.titleLabel.text = "People"
            self.subtitleLabel.text = "Find people nearby and connect"
        case 0:
            self.titleLabel.text = "Business"
            self.subtitleLabel.text = "Licenses & Permits"
        case 0:
            self.titleLabel.text = "Phone"
            self.subtitleLabel.text = "Cell Phone Carrier, Contact Details.."
        case 0:
            self.titleLabel.text = "Address"
            self.subtitleLabel.text = "Past Addresses, Locations"
        default:
            self.titleLabel.text = "People"
            self.subtitleLabel.text = "Find people nearby and connect"
        }
        
        UIView.animate(withDuration: 1.0) {
            self.titleLabel.alpha = 0.0
            self.titleLabel.alpha = 1.0
            
            self.subtitleLabel.alpha = 0.0
            self.subtitleLabel.alpha = 1.0
        }
        
    }
}
