//
//  HowToCPRViewController.swift
//  CPR Simulator Project
//
//  Created by chimdolin on 16/10/2560 BE.
//  Copyright © 2560 chimdolin. All rights reserved.
//

import UIKit

class HowToCPRViewController: UIViewController {
    
    func customUI() {
        //custom navigation and statusbar
        self.navigationController?.isNavigationBarHidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        customUI()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
