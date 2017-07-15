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
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    @IBAction func displayMenuController(_ sender: Any) {
        self.slideMenuController()?.openLeft()
    }
    
}
