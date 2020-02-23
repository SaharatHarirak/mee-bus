//
//  MainTabBarController.swift
//  MeeVan
//
//  Created by CherChamp on 23/2/2563 BE.
//  Copyright © 2563 MeeBus. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let nav1 = generateTabBarController(vc: SearchViewController(), titile: "MeeVan", image: #imageLiteral(resourceName: "icon-home"))
//        viewControllers = [nav1]
        
    }
    
    fileprivate func generateTabBarController(vc: UIViewController, titile: String, image: UIImage) -> UINavigationController {
            vc.navigationItem.title = title
        let navController = UINavigationController(rootViewController: vc)
        navController.title = title
        navController.tabBarItem.image = image
        return navController
    }
    

}
