//
//  DLHamburguerNavigationController.swift
//  DLHamburguerMenu
//
//  Created by Rennan Rebouças on 17/11/18.
//  Copyright © 2018 Rennan Rebouças. All rights reserved.
//

import UIKit

class DLHamburguerNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addGestureRecognizer(UIPanGestureRecognizer(target: self, action: #selector(DLHamburguerNavigationController.panGestureRecognized(_:))))
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func panGestureRecognized(_ sender: UIPanGestureRecognizer!) {
        // dismiss keyboard
        self.view.endEditing(true)
        self.findHamburguerViewController()?.view.endEditing(true)
        
        // pass gesture to hamburguer view controller.
        self.findHamburguerViewController()?.panGestureRecognized(sender)
    }
    
}
