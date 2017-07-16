//
//  MenuTableViewController.swift
//  WhitePages
//
//  Created by marcosgn1 on 7/15/17.
//  Copyright © 2017 Marcos Garcia. All rights reserved.
//

import UIKit

class MenuTableViewController: UITableViewController {
    
    var headerLabels = ["Menu", "Search", "Around Me"]
    var menuFirstSection = ["History", "About", "Settings"]
    var menuSearchSection = ["People Search", "Business Search", "Reverse Phone", "Reverse Address"]
    var menuAroundMeSection = ["Nearby People", "Nearby Stores"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName: "WPMenuHeaderCell", bundle: nil), forCellReuseIdentifier: "WPMenuHeaderCell")
        tableView.register(UINib(nibName: "WPFooterMenuCell", bundle: nil), forCellReuseIdentifier: "WPFooterMenuCell")
        
        tableView.isScrollEnabled = false
        tableView.tableFooterView = UIView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
            case 0:
                return menuFirstSection.count
            case 1:
                return menuSearchSection.count
            case 2:
                return menuAroundMeSection.count
            default:
                return 0
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) 
        
        switch (indexPath.section) {
            case 0:
                cell.textLabel?.text = menuFirstSection[indexPath.row]
            case 1:
                cell.textLabel?.text = menuSearchSection[indexPath.row]
            case 2:
                cell.textLabel?.text = menuAroundMeSection[indexPath.row]
            default:
                cell.textLabel?.text = "Other"
        }
        cell.textLabel?.font = UIFont(name: "Avenir", size: 18.0)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 34.0
    }

    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerCell = tableView.dequeueReusableCell(withIdentifier: "WPMenuHeaderCell") as! WPMenuHeaderCell
        
        headerCell.titleLabel.text = headerLabels[section]
        let backgroundColor = UIColor(red: 79.0/255.0, green: 79.0/255.0, blue: 79.0/255.0, alpha: 0.75)
        headerCell.backgroundColor = backgroundColor
        
        return headerCell
    }

    override func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        if section == 2 {
            return 350.0
        }
        else{
            return 0
        }
    }
    
    override func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        if section == 2 {
            let footerCell = tableView.dequeueReusableCell(withIdentifier: "WPFooterMenuCell") as! WPFooterMenuCell
            
            return footerCell
        }
        else{
            return nil
        }
    }
}
