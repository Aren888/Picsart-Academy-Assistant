//
//  HomeViewController.swift
//  Picsart-Academy-Assistant
//
//  Created by Aren Musayelyan on 25.05.23.
//

import UIKit

enum Weekdays: CaseIterable {
    case Monday
    case Tuesday
    case Wednesday
    case Thursday
    case Friday
    case Saturday
    case Sunday
}

class HomeViewController: UIViewController {
    
    public var myArray: [String] = []
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        arrayAppendWeekdays()
        customBackgroundColorVC(colorVC: CustomColorVC.self.HomeViewController)
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "MyCell")
    }
    
    
}
