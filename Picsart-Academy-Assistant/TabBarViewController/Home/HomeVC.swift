//
//  HomeVC.swift
//  Picsart-Academy-Assistant
//
//  Created by Aren Musayelyan on 25.05.23.
//

import UIKit

struct Weekdays {
    var Monday: String = "Monday"
    var Tuesday: String = "Tuesday"
    var Wednesday: String = "Wednesday"
    var Thursday: String = "Thursday"
    var Friday: String = "Friday"
    var Saturday: String = "Saturday"
    var Sunday: String = "Sunday"
}



class HomeVC: UIViewController {
    
    let scrollView = UIScrollView()
    
    private let arrayView: [UIView] = {
        let newView = UIView()
        newView.backgroundColor = UIColor.gray
        return newView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupScrollView()
    }
    
    func setupScrollView() {
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        newView.translatesAutoresizingMaskIntoConstraints = false
        
        
        view.addSubview(scrollView)
        scrollView.addSubview(newView)
        
        scrollView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        scrollView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        scrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
 
        newView.centerXAnchor.constraint(equalTo:  scrollView.centerXAnchor).isActive = true
        newView.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true
        newView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        newView.heightAnchor.constraint(equalToConstant: 100).isActive = true
    }
   
}

