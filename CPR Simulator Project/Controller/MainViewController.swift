//
//  MainViewController.swift
//  CPR Simulator Project
//
//  Created by chimdolin on 14/10/2560 BE.
//  Copyright © 2560 chimdolin. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var whatCPRBtn: UIButton!
    @IBOutlet weak var howToCPRBtn: UIButton!
    @IBOutlet weak var startCPRBtn: UIButton!
    @IBOutlet weak var headerTransitionView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //custom button
        whatCPRBtn.layer.cornerRadius = 3
        whatCPRBtn.layer.borderWidth = 1
        whatCPRBtn.layer.borderColor = UIColor(red:0.70, green:0.62, blue:0.85, alpha:1.00).cgColor
        whatCPRBtn.layer.shadowColor = UIColor(red:0.64, green:0.82, blue:0.88, alpha:1.00).cgColor
        whatCPRBtn.layer.shadowRadius = 3
        whatCPRBtn.layer.shadowOpacity = 1
        whatCPRBtn.layer.shadowOffset = CGSize(width:3 ,height:3)
        
        howToCPRBtn.layer.cornerRadius = 3
        howToCPRBtn.layer.borderWidth = 1
        howToCPRBtn.layer.borderColor = UIColor(red:0.70, green:0.62, blue:0.85, alpha:1.00).cgColor
        howToCPRBtn.layer.shadowColor = UIColor(red:0.64, green:0.82, blue:0.88, alpha:1.00).cgColor
        howToCPRBtn.layer.shadowRadius = 3
        howToCPRBtn.layer.shadowOpacity = 1
        howToCPRBtn.layer.shadowOffset = CGSize(width:3 ,height:3)
        
        startCPRBtn.layer.cornerRadius = 3
        startCPRBtn.layer.borderWidth = 1
        startCPRBtn.layer.borderColor = UIColor(red:0.70, green:0.62, blue:0.85, alpha:1.00).cgColor
        startCPRBtn.layer.shadowColor = UIColor(red:0.64, green:0.82, blue:0.88, alpha:1.00).cgColor
        startCPRBtn.layer.shadowRadius = 3
        startCPRBtn.layer.shadowOpacity = 1
        startCPRBtn.layer.shadowOffset = CGSize(width:3 ,height:3)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
