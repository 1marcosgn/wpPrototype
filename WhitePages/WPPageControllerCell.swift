//
//  WPPageControllerCell.swift
//  WhitePages
//
//  Created by marcosgn1 on 7/16/17.
//  Copyright © 2017 Marcos Garcia. All rights reserved.
//

import UIKit
import Lottie

class WPPageControllerCell: UITableViewCell, UIPageViewControllerDelegate {
    
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var pageController: UIPageControl!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        let animationView = LOTAnimationView(name: "business")
        animationView.frame = CGRect(x: -60, y: -80, width: 200, height: 200)
        self.iconImageView.addSubview(animationView)
        animationView.loopAnimation = true
        animationView.play()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    @IBAction func elementUpdated(_ sender: Any) {
        
        switch pageController.currentPage {
        case 0:
            self.titleLabel.text = "People"
            self.subtitleLabel.text = "Find people nearby and connect"
        case 1:
            self.titleLabel.text = "Business"
            self.subtitleLabel.text = "Licenses & Permits"
        case 2:
            self.titleLabel.text = "Phone"
            self.subtitleLabel.text = "Cell Phone Carrier, Contacts"
        case 3:
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
