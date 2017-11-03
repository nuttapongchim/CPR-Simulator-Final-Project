//
//  HowToCPRPageViewController.swift
//  CPR Simulator Project
//
//  Created by chimdolin on 3/11/2560 BE.
//  Copyright © 2560 chimdolin. All rights reserved.
//

import UIKit

class HowToCPRPageViewController: UIPageViewController,UIPageViewControllerDelegate,UIPageViewControllerDataSource {
    
    
    lazy var orderedViewControllers: [UIViewController] = {
        return [self.newVc(viewController: "HowToPrepare"),
                self.newVc(viewController: "HowToStep1"),
                self.newVc(viewController: "HowToStep2"),
                self.newVc(viewController: "HowToStep3"),
                self.newVc(viewController: "HowToStep4"),
                self.newVc(viewController: "HowToStep5"),
                self.newVc(viewController: "HowToEnd")]
    }()
    
    
    var pageControl = UIPageControl()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.dataSource = self
        
        if let firstViewController = orderedViewControllers.first {
            
            setViewControllers([firstViewController], direction: .forward, animated: true, completion: nil)
            
        }
        
        self.delegate = self
        
        configPageController()
        
    }
    
    
    func configPageController() {
        
        pageControl = UIPageControl(frame: CGRect(x: 0 ,y: UIScreen.main.bounds.maxY - 50 ,width: UIScreen.main.bounds.width ,height:50))
        
        pageControl.numberOfPages = orderedViewControllers.count
        pageControl.currentPage = 0
        pageControl.tintColor = UIColor(red:0.30, green:0.42, blue:0.50, alpha:1.00)
        pageControl.pageIndicatorTintColor = UIColor.white
        pageControl.currentPageIndicatorTintColor = UIColor(red:0.30, green:0.42, blue:0.50, alpha:1.00)
        pageControl.isUserInteractionEnabled = false
        
        self.view.addSubview(pageControl)
    }
    
    
    func newVc(viewController: String) -> UIViewController {
        
        return UIStoryboard(name:"Main" , bundle: nil).instantiateViewController(withIdentifier: viewController)
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        guard let viewControllerIndex = orderedViewControllers.index(of: viewController) else {
            return nil
        }
        
        let previousIndex = viewControllerIndex - 1
        
        guard previousIndex >= 0 else {
            //return orderedViewControllers.last
            return nil
        }
        
        guard orderedViewControllers.count > previousIndex else {
            return nil
        }
        
        return orderedViewControllers[previousIndex]
        
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        guard let viewControllerIndex = orderedViewControllers.index(of: viewController) else {
            return nil
        }
        
        let nextIndex = viewControllerIndex + 1
        
        guard orderedViewControllers.count != nextIndex else {
            //return orderedViewControllers.first
            return nil
        }
        
        guard orderedViewControllers.count > nextIndex else {
            return nil
        }
        
        return orderedViewControllers[nextIndex]
        
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool) {
        let pageContentViewController = pageViewController.viewControllers![0]
        self.pageControl.currentPage = orderedViewControllers.index(of: pageContentViewController)!
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
