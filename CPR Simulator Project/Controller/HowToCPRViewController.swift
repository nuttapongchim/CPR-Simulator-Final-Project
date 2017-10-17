//
//  HowToCPRViewController.swift
//  CPR Simulator Project
//
//  Created by chimdolin on 16/10/2560 BE.
//  Copyright © 2560 chimdolin. All rights reserved.
//

import UIKit

class HowToCPRViewController: UIViewController {

    @IBOutlet var mainView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //set mainView
        self.mainView.setGradientBackground(colorOne: UIColor(red:0.90, green:0.91, blue:0.94, alpha:1.0), colorTwo: UIColor(red:0.93, green:0.95, blue:0.96, alpha:1.0))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
