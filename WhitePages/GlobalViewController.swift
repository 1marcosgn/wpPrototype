//
//  GlobalViewController.swift
//  WhitePages
//
//  Created by marcosgn1 on 7/15/17.
//  Copyright © 2017 Marcos Garcia. All rights reserved.
//

import UIKit

class GlobalViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.titleView = UIImageView(image: UIImage(named: "header"))
        self.navigationController?.navigationBar.barTintColor = UIColor.white
        self.navigationController?.navigationBar.isTranslucent = false
        tableView.isScrollEnabled = false
        
        //Register Cells
        tableView.register(UINib(nibName: "WPPageControllerCell", bundle: nil), forCellReuseIdentifier: "WPPageControllerCell")
        
        tableView.register(UINib(nibName: "WPExtraTableViewCell", bundle: nil), forCellReuseIdentifier: "WPExtraTableViewCell")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func displayMenuController(_ sender: Any) {
        self.slideMenuController()?.openLeft()
    }
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        switch indexPath.row {
        case 0:
            return 355.0
        case 0:
            return 103.0
        case 0:
            return 103.0
        default:
            return 103.0
        }
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell : UITableViewCell
        
        switch indexPath.row {
        case 0:
            cell = tableView.dequeueReusableCell(withIdentifier: "WPPageControllerCell", for: indexPath)
        case 1:
            let wpExtracell = tableView.dequeueReusableCell(withIdentifier: "WPExtraTableViewCell", for: indexPath) as! WPExtraTableViewCell
            wpExtracell.titleDetail.text = "Nearby People"
            wpExtracell.subtitleDetail.text = "Connect with neighbors and add them to your address book!"
            cell = wpExtracell
        case 2:
            let wpExtracell = tableView.dequeueReusableCell(withIdentifier: "WPExtraTableViewCell", for: indexPath) as! WPExtraTableViewCell
            wpExtracell.titleDetail.text = "Nearby Businesses"
            wpExtracell.subtitleDetail.text = "Browse nearby shopping, restaurants, bars, pizza and more."
            wpExtracell.imgDetail.image = UIImage(named: "people")
            cell = wpExtracell
        default:
            cell = tableView.dequeueReusableCell(withIdentifier: "WPExtraTableViewCell", for: indexPath)
        }
        
        return cell
    }
}
