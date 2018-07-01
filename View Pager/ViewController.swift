//
//  ViewController.swift
//  View Pager
//
//  Created by apple on 29/04/18.
//  Copyright © 2018 apple. All rights reserved.
//

import UIKit
import CarbonKit

let commonColor = UIColor(red: 76.0/255.0, green:
    175.0/255.0, blue: 80.0/255.0, alpha: 1.0)

class ViewController: UIViewController,CarbonTabSwipeNavigationDelegate{

   
    var carbonTabSwipeNavigation : CarbonTabSwipeNavigation?
    let items = ["Features", "Products", "About"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
       carbonTabSwipeNavigation = CarbonTabSwipeNavigation(items: items, delegate: self)
        carbonTabSwipeNavigation?.insert(intoRootViewController: self)
        
        carbonTabSwipeNavigation?.setSelectedColor(commonColor)
        carbonTabSwipeNavigation?.setIndicatorColor(commonColor)
        carbonTabSwipeNavigation?.setNormalColor(commonColor)
        self.navigationController?.navigationBar.barTintColor = commonColor
        self.title = "Confiance Labs"
        
        
        
        view.addConstraint(NSLayoutConstraint(item: carbonTabSwipeNavigation?.view,
                                              attribute: .bottom,
                                              relatedBy: .equal,
                                              toItem: self.view.safeAreaLayoutGuide,
                                              attribute: .bottom,
                                              multiplier: 1,
                                              constant: -50))
    }

    
    func carbonTabSwipeNavigation(_ carbonTabSwipeNavigation: CarbonTabSwipeNavigation, viewControllerAt index: UInt) -> UIViewController {
        
       
        
        if index == 2 {
            let aboutUsScreen = self.storyboard?.instantiateViewController(withIdentifier: "AboutUsScreen") as! AboutUsScreen
        
        return aboutUsScreen
        }else{
            let screen = self.storyboard?.instantiateViewController(withIdentifier: "ProductsScreen") as! ProductsScreen
            
            return screen
        }
        
    }
   
    @IBAction func cartClick(_ sender: Any) {
    
//    let tabIndex = (carbonTabSwipeNavigation?.currentTabIndex)!
//    let tabName = items[Int(tabIndex)]
//        print("Here we are at index \(tabIndex) and tab name is \(tabName)")
        
        carbonTabSwipeNavigation?.setCurrentTabIndex(2, withAnimation: true)
    
        
        
    }
    

}

