//
//  WhatCPRViewController.swift
//  CPR Simulator Project
//
//  Created by chimdolin on 16/10/2560 BE.
//  Copyright © 2560 chimdolin. All rights reserved.
//

import UIKit

class WhatCPRViewController: UIViewController {

    @IBOutlet weak var headerLabel: UILabel!
    @IBOutlet var mainView: UIView!
    @IBOutlet weak var headerView: UIViewX!
    @IBOutlet weak var headerImage: UIImageView!
    @IBOutlet weak var firstArticle: UILabel!
    
    let article = "    CPR ( Cardiopulmonary Resuscitation ) คือ การช่วยเหลือผู้ที่หยุดหายใจหรือหัวใจหยุดเต้น ให้มีการหายใจและการไหลเวียนกลับคืนสู่สภาพเดิม ป้องกันเนื้อเยื่อได้รับอันตรายจากการขาดออกซิเจนอย่างถาวร ซึ่งสามารถทำได้โดยการช่วยฟื้นคืนชีพขั้นพื้นฐาน (Basic life support) ได้แก่ การผายปอด และการนวดหัวใจภายนอก "
    
    func customUI() {
        
        //custom navigation bar
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.tintColor = UIColor.white
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.view.backgroundColor = .clear
        self.navigationController?.navigationBar.barStyle = UIBarStyle.black
        
        //set mainView
        self.mainView.setGradientBackground(colorOne: UIColor(red:0.90, green:0.91, blue:0.94, alpha:1.0), colorTwo: UIColor(red:0.93, green:0.95, blue:0.96, alpha:1.0))
        
        //set header shadow
        headerView.layer.masksToBounds = false
        headerView.layer.shadowColor = UIColor(red:0.45, green:0.45, blue:0.45, alpha:1.00).cgColor
        headerView.layer.shadowOpacity = 0.5
        headerView.layer.shadowOffset = CGSize(width: 0, height: 1)
        headerView.layer.shadowRadius = 0
        headerView.layer.shouldRasterize = true
        
        //set header image
        headerImage.layer.masksToBounds = false
        headerImage.layer.shadowColor = UIColor(red:0.51, green:0.57, blue:0.62, alpha:1.00).cgColor
        headerImage.layer.shadowOpacity = 1
        headerImage.layer.shadowOffset = CGSize(width: 0, height: 5)
        headerImage.layer.shadowRadius = 1
        headerImage.layer.shouldRasterize = true
        
        //set header label
        headerLabel.layer.borderColor = UIColor(red:0.65, green:0.86, blue:0.93, alpha:0.9).cgColor
        headerLabel.layer.borderWidth = 3
        headerLabel.layer.shadowColor = UIColor(red:0.65, green:0.86, blue:0.93, alpha:0.9).cgColor
        headerLabel.layer.shadowRadius = 3
        headerLabel.layer.shadowOpacity = 1
        headerLabel.layer.shadowOffset = CGSize(width: 0 , height: 0)
        headerLabel.layer.masksToBounds = false
        
        //set paragraphStyle
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = 5
        let attrString = NSMutableAttributedString(string: article)
        attrString.addAttribute(NSAttributedStringKey.paragraphStyle, value:paragraphStyle, range:NSMakeRange(0, attrString.length))
        firstArticle.attributedText = attrString
        firstArticle.textAlignment = NSTextAlignment.center
        
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
