//
//  ViewController.swift
//  ElementCentering
//
//  Created by Yuliya on 09/08/2023.
//

import UIKit

class ViewController: UIViewController {
    
    private let containerView = CustomView()
    private var containerViewHeight: CGFloat = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        view.addSubview(containerView)
        containerView.translatesAutoresizingMaskIntoConstraints = false
        containerViewHeight = containerView.height()
        
        setupConstraints()
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            containerView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            containerView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            containerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            containerView.leadingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            containerView.heightAnchor.constraint(equalToConstant: containerViewHeight)
        ])
    }
}

