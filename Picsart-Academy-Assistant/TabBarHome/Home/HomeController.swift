//
//  HomeViewController.swift
//  Picsart-Academy-Assistant
//
//  Created by Aren Musayelyan on 19.05.23.
//

import UIKit

class HomeController: UIViewController {
    
    private lazy var scrollView = {
        var scrollView = UIScrollView()
        scrollView.backgroundColor = .white
        scrollView.frame = view.bounds
        scrollView.contentSize = contentSize
        return scrollView
    }()
    
    private lazy var contentView: UIView = {
        var contentView = UIView()
        contentView.backgroundColor = .white
        contentView.frame.size = contentSize
        return contentView
    }()
    
    private var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.spacing = 20
        return stackView
    }()
    
    private var contentSize: CGSize {
        CGSize(width: view.frame.width, height: view.frame.height + 400)
    }
    
    
    override func viewDidLoad() {

        super.viewDidLoad()
        self.view.backgroundColor = UIColor(red: 1.0, green: 0.894, blue: 0.882, alpha: 1.0)
        self.view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        contentView.addSubview(stackView)
        setupColors()
        setupViewConstraints()
    }

}


extension HomeController {
    func setupViewConstraints() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: contentView.topAnchor),
            stackView.rightAnchor.constraint(equalTo: contentView.rightAnchor),
            stackView.leftAnchor.constraint(equalTo: contentView.leftAnchor)
        ])
        
        
        for view in stackView.arrangedSubviews {
            NSLayoutConstraint.activate([
                view.widthAnchor.constraint(equalToConstant: 380),
                view.heightAnchor.constraint(equalToConstant: 40)
            ])
        }
    }
    private func setupColors() {
        let colors = [UIColor.red, .green, .blue]
        
        for _ in 0..<10 {
            let view = UIView()
            view.backgroundColor = .gray
            stackView.addArrangedSubview(view)
        }
    }
}
