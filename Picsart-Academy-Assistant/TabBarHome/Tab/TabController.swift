//
//  TabController.swift
//  Picsart-Academy-Assistant
//
//  Created by Aren Musayelyan on 19.05.23.
//

import UIKit

class TabController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabs()
        self.tabBar.barTintColor = .green
        self.tabBar.unselectedItemTintColor = .purple
    }
    
    private func setupTabs() {
        
        let home = self.createNav(with: "Home", and: UIImage(systemName: "house.circle"), vc: HomeController())
        let chat = self.createNav(with: "Chat", and: UIImage(systemName: "message.circle"), vc: ChatController())
        let homework = self.createNav(with: "Homework", and: UIImage(systemName: "pencil.circle"), vc: HomeworkController())
        let profile = self.createNav(with: "Profile", and: UIImage(systemName: "person.crop.circle.fill"), vc: ProfileController())
        
        self.setViewControllers([home, chat, homework, profile], animated: true)
    }
    
    private func createNav(with title: String, and image: UIImage?, vc: UIViewController) -> UINavigationController{
        let nav = UINavigationController(rootViewController: vc)
        nav.tabBarItem.title = title
        nav.tabBarItem.image = image
        nav.viewControllers[0].navigationItem.title = title + "Controller"
        
        return nav
    }
    
}

