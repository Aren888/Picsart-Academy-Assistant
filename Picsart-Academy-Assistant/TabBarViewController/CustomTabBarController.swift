//
//  CustomTabBarController.swift
//  Picsart-Academy-Assistant
//
//  Created by Aren Musayelyan on 26.05.23.
//

import UIKit

class CustomTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .yellow
        self.tabBarController?.tabBar.isHidden = true

    }
   
}
