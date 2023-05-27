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
        setupTabs()
        customTabBarDesign()
    }
    
    private func setupTabs() {
        
        let home = self.createNav(with: "Home", and: UIImage(systemName: "house.circle"), vc: HomeVC())
        let chat = self.createNav(with: "Chat", and: UIImage(systemName: "message.circle"), vc: ChatVC())
        let homework = self.createNav(with: "Homework", and: UIImage(systemName: "pencil.circle"), vc: HomeworkVC())
        let profile = self.createNav(with: "Profile", and: UIImage(systemName: "person.crop.circle.fill"), vc: ProfileVC())
        let newPost = self.createNav(with: "New Post", and: UIImage(systemName: "plus.circle"), vc: NewPostVC())
        
        self.setViewControllers([home, chat, newPost, homework, profile], animated: true)
    }
    
    private func createNav(with title: String, and image: UIImage?, vc: UIViewController) -> UINavigationController{
        let nav = UINavigationController(rootViewController: vc)
        nav.tabBarItem.title = title
        nav.tabBarItem.image = image
        nav.viewControllers[0].navigationItem.title = title + "Controller"
        
        if nav.tabBarItem.title == "Home" {
            nav.isNavigationBarHidden = true
        }
        return nav
    }
    
    private func customTabBarDesign() {
        self.tabBar.unselectedItemTintColor = UIColor(red: 0.6, green: 0.6, blue: 0.6, alpha: 1.0)
        self.tabBar.backgroundColor = UIColor.clear
    }
}
