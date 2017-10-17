//
//  Gradient.swift
//  CPR Simulator Project
//
//  Created by chimdolin on 16/10/2560 BE.
//  Copyright © 2560 chimdolin. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    func setGradientBackground(colorOne : UIColor ,colorTwo : UIColor) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.colors = [colorOne.cgColor, colorTwo.cgColor]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.startPoint = CGPoint(x: 1.0 ,y: 1.0)
        gradientLayer.endPoint = CGPoint(x: 0.0 ,y: 0.0)
        
        layer.insertSublayer(gradientLayer ,at: 0)
    }
}

extension UIButton {
    func setGradientButton(colorOne : UIColor , colorTwo : UIColor) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.colors = [colorOne.cgColor, colorTwo.cgColor]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.startPoint = CGPoint(x: 1.0 ,y: 1.0)
        gradientLayer.endPoint = CGPoint(x: 0.0 ,y: 0.0)
        
        layer.insertSublayer(gradientLayer ,at: 0)
    }
}
