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
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 1
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 355.0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "WPPageControllerCell", for: indexPath)
        return cell
    }
}
