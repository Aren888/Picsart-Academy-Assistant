//
//  GetStartedViewController.swift
//  Picsart-Academy-Assistant
//
//  Created by Aren Musayelyan on 26.05.23.
//

import UIKit

class GetStartedViewController: UIViewController {
    
    // Create the "WELCOME!!" label
    let textView : UILabel = {
        let textView = UILabel()
        textView.text = "You Are Welcome !!"
        textView.font = UIFont.boldSystemFont(ofSize: 26)
        textView.textColor = UIColor(#colorLiteral(red: 0.2535000145, green: 0.3195981383, blue: 0.7105780244, alpha: 1))
        textView.textAlignment = .center
        return textView
    }()
    
    // Create the "Get Started" button
    let button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Get Started", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = UIColor(red: 0.25, green: 0.32, blue: 0.71, alpha: 1.0)
        button.layer.cornerRadius = 8.0
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red: 0.788, green: 0.867, blue: 0.922, alpha: 1.0)
        setupConstraints()
    }
    
    private func setupConstraints() {
        
        button.translatesAutoresizingMaskIntoConstraints = false
        textView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(button)
        view.addSubview(textView)
        
        NSLayoutConstraint.activate([
            // Constraints for "WELCOME!!" label
            textView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            textView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            // Constraints for "Get Started" button
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.topAnchor.constraint(equalTo: textView.bottomAnchor, constant: 20),
            button.widthAnchor.constraint(equalToConstant: 200),
            button.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        button.addTarget(self, action: #selector(getStartedButtonTapped), for: .touchUpInside)
    }
    
    @objc func getStartedButtonTapped() {
        let vc = CustomTabBarController()
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    
}
