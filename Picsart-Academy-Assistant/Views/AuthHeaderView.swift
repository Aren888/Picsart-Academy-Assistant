//
//  AuthHeaderView.swift
//  Picsart-Academy-Assistant
//
//  Created by Aren Musayelyan on 12.05.23.
//

import UIKit

class AuthHeaderView: UIView {
    
    
    
    // MARK: - UI Components
    
    private let logoimageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        iv.image = UIImage(named: "logo")
        return iv
    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 26, weight: .bold)
        label.text = "Error"
        return label
    }()
    
    private let subTitleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .secondaryLabel
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 18, weight: .regular)
        label.text = "Error"
        return label
    }()
    
    // MARK: - LifeCycle
    
    init(title: String, subTitile: String) {
        super.init(frame: .zero)
        self.titleLabel.text = title
        self.subTitleLabel.text = subTitile
        
        self.setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - UI Setup
    private func setupUI() {
        self.addSubview(logoimageView)
        self.addSubview(titleLabel)
        self.addSubview(subTitleLabel)
        
        logoimageView.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        subTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            self.logoimageView.topAnchor.constraint(equalTo:
                                                        self.topAnchor, constant: 30),
            self.logoimageView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            self.logoimageView.widthAnchor.constraint(equalToConstant: 90),
            self.logoimageView.heightAnchor.constraint(equalTo:logoimageView.widthAnchor),
            
            self.titleLabel.topAnchor.constraint(equalTo: logoimageView.bottomAnchor, constant: 19),
            self.titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            self.titleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            
            
            
            self.subTitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 12),
            self.subTitleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            self.subTitleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            
        ])}
}
