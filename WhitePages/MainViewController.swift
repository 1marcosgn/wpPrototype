//
//  MainViewController.swift
//  WhitePages
//
//  Created by marcosgn1 on 7/14/17.
//  Copyright © 2017 Marcos Garcia. All rights reserved.
//

import UIKit
import SlideMenuControllerSwift

class MainViewController: SlideMenuController{
    
    override func awakeFromNib() {
        if let controller = self.storyboard?.instantiateViewController(withIdentifier: "NavigationViewController") {
            self.mainViewController = controller
        }
        
        if let controller = self.storyboard?.instantiateViewController(withIdentifier: "MenuTableViewController") {
            self.leftViewController = controller
        }
        super.awakeFromNib()
    }
    
}
