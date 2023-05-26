//
//  GetStartedViewController.swift
//  Picsart-Academy-Assistant
//
//  Created by Aren Musayelyan on 26.05.23.
//

import UIKit

class GetStartedVC: UIViewController {
    
    private let loadinglabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 2
        label.text = "Loading..."
        label.font = UIFont.boldSystemFont(ofSize: 30)
        label.textColor = UIColor(#colorLiteral(red: 0.2535000145, green: 0.3195981383, blue: 0.7105780244, alpha: 1))
        label.textAlignment = .center
        return label
    }()
    
    let welcomeLabel : UILabel = {
        let welcomeLabel = UILabel()
        welcomeLabel.numberOfLines = 2
        welcomeLabel.text = "You Have Successfully\n Entered The Site!"
        welcomeLabel.font = UIFont.boldSystemFont(ofSize: 12)
        welcomeLabel.textColor = UIColor(#colorLiteral(red: 0.2535000145, green: 0.3195981383, blue: 0.7105780244, alpha: 1))
        welcomeLabel.textAlignment = .center
        return welcomeLabel
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
        setuploadinglabelConstraints(constant: 0)
        getUserName()
    }
    
    
    
    func setuploadinglabelConstraints(constant: CGFloat) {
        
        loadinglabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(loadinglabel)
        NSLayoutConstraint.activate([

            loadinglabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loadinglabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: constant),
        ])
    }
    
    private func getUserName() {
        AuthService.shared.fetchUser { [weak self] user, error in
            guard let self = self else { return }
            if let error = error {
                AlertManager.showFetchingUserError(on: self, with: error)
                return
            }
            
            if let user = user {
                self.loadinglabel.text = "Hi \(user.username) Welcome ;)"
                addButtonWelcomeLabel()
            }
        }
    }
    
    func addButtonWelcomeLabel() {
        
        button.translatesAutoresizingMaskIntoConstraints = false
        welcomeLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button)
        view.addSubview(welcomeLabel)
        
        setuploadinglabelConstraints(constant: -60)
        
        NSLayoutConstraint.activate([
            
            welcomeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            welcomeLabel.topAnchor.constraint(equalTo: loadinglabel.bottomAnchor, constant: 0),
            welcomeLabel.widthAnchor.constraint(equalToConstant: 200),
            welcomeLabel.heightAnchor.constraint(equalToConstant: 50),
            
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 10),
            button.widthAnchor.constraint(equalToConstant: 200),
            button.heightAnchor.constraint(equalToConstant: 50),
        ])
        button.addTarget(self, action: #selector(getStartedButtonTapped), for: .touchUpInside)
    }
    
    @objc func getStartedButtonTapped() {
        let vc = CustomTabBarController()
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
}
