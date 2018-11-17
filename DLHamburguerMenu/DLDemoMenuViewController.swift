//
//  DLDemoMenuViewController.swift
//  DLHamburguerMenu
//
//  Created by Rennan Rebouças on 17/11/18.
//  Copyright © 2018 Rennan Rebouças. All rights reserved.
//

import UIKit

class DLDemoMenuViewController: UIViewController {
    // outlets
    @IBOutlet weak var tableView: UITableView!
    
    // data
    let segues = ["option 1", "option 2", "option 3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: UITableViewDelegate&DataSource methods
    
    
    // MARK: - Navigation
    
    func mainNavigationController() -> DLHamburguerNavigationController {
        return self.storyboard?.instantiateViewController(withIdentifier: "DLDemoNavigationViewController") as! DLHamburguerNavigationController
    }
    
}
