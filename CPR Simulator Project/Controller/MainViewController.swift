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
    @IBOutlet weak var viewShadow: UIView!
    @IBOutlet weak var headerTransitionView: UIViewX!
    
    var colorArray : [(color1 : UIColor , color2 : UIColor)] = []
    var currentColorArrayIndex = -1
    
    func animateBackgroundColor() {
        
        currentColorArrayIndex = currentColorArrayIndex == (colorArray.count - 1) ? 0 : currentColorArrayIndex + 1
        UIView.transition(with: headerTransitionView, duration: 2, options: [.transitionCrossDissolve], animations: {
            self.headerTransitionView.firstColor = self.colorArray[self.currentColorArrayIndex].color1
            self.headerTransitionView.secondColor = self.colorArray[self.currentColorArrayIndex].color2
        }) { (success) in
            self.animateBackgroundColor()
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //custom navigation bar
        
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.navigationBar.barStyle = UIBarStyle.black
        self.navigationController?.view.backgroundColor = .clear
        
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
        
        //make view shadow
        viewShadow.layer.masksToBounds = false
        viewShadow.layer.shadowColor = UIColor.black.cgColor
        viewShadow.layer.shadowOpacity = 0.5
        viewShadow.layer.shadowOffset = CGSize(width: 0, height: 5)
        viewShadow.layer.shadowRadius = 4
        viewShadow.layer.shouldRasterize = true

        
        //config color for make animationBackground color
        colorArray.append((color1: UIColor(red:0.89, green:0.65, blue:0.64, alpha:1.00), color2: UIColor(red:0.70, green:0.76, blue:0.76, alpha:1.00)))
        colorArray.append((color1: UIColor(red:0.70, green:0.76, blue:0.76, alpha:1.00),color2: UIColor(red:0.48, green:0.75, blue:0.87, alpha:1.00)))
        colorArray.append((color1: UIColor(red:0.48, green:0.75, blue:0.87, alpha:1.00),color2: UIColor(red:0.56, green:0.70, blue:0.85, alpha:1.00)))
        colorArray.append((color1: UIColor(red:0.56, green:0.70, blue:0.85, alpha:1.00),color2: UIColor(red:0.56, green:0.70, blue:0.85, alpha:1.00)))
        colorArray.append((color1: UIColor(red:0.56, green:0.70, blue:0.85, alpha:1.00),color2: UIColor(red:0.68, green:0.64, blue:0.84, alpha:1.00)))
        colorArray.append((color1: UIColor(red:0.68, green:0.64, blue:0.84, alpha:1.00),color2: UIColor(red:0.62, green:0.69, blue:0.84, alpha:1.00)))
        colorArray.append((color1: UIColor(red:0.62, green:0.69, blue:0.84, alpha:1.00),color2: UIColor(red:0.55, green:0.76, blue:0.84, alpha:1.00)))

        animateBackgroundColor()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
