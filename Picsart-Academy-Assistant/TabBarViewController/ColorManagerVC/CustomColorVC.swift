//
//  CustomTabBarColor.swift
//  Picsart-Academy-Assistant
//
//  Created by Aren Musayelyan on 24.05.23.
//

import Foundation
import UIKit

enum CustomColorVC {
    case HomeVC
    case ChatController
    case NewPostController
    case HomeworkController
    case ProfileController
}

extension UIViewController {
    func customBackgroundColorVC(colorVC: CustomColorVC) {
        switch colorVC {
        case .ChatController:
            self.view.backgroundColor = UIColor(red: 0.902, green: 0.902, blue: 0.980, alpha: 1.0)
        case .NewPostController:
            self.view.backgroundColor = UIColor(red: 0.788, green: 0.867, blue: 0.922, alpha: 1.0)
        case .HomeworkController:
            self.view.backgroundColor = UIColor(red: 0.929, green: 0.812, blue: 0.847, alpha: 1.0)
        case .ProfileController:
            self.view.backgroundColor = UIColor(red: 0.745, green: 0.925, blue: 0.831, alpha: 1.0)
        case .HomeVC:
            self.view.backgroundColor = UIColor(red: 0.929, green: 0.812, blue: 0.847, alpha: 1.0)
        }
    }
}
