//
//  CustomView.swift
//  DesignTasks
//
//  Created by Yuliya on 03/08/2023.
//

import UIKit

class CustomView: BaseView {
    
    enum Size: CGFloat {
        case itemHeight = 50
        case itemSpace = 25
        case offset = 10
    }

    private let purpleView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemPurple
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let redView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemRed
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let yellowView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemYellow
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let button: UIButton = {
        let button = UIButton()
        button.setTitle("Button", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemGreen
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func setupView() {
        super.setupView()
        backgroundColor = .clear
        layer.borderColor = UIColor.black.cgColor
        layer.borderWidth = 1
        addSubview(purpleView)
        addSubview(redView)
        addSubview(yellowView)
        addSubview(button)
        setupConstraints()
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            purpleView.topAnchor.constraint(equalTo: topAnchor, constant: Size.offset.rawValue),
            purpleView.heightAnchor.constraint(equalToConstant: Size.itemHeight.rawValue),
            purpleView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: Size.offset.rawValue),
            purpleView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -Size.offset.rawValue),
            
            redView.topAnchor.constraint(equalTo: purpleView.bottomAnchor, constant: Size.itemSpace.rawValue),
            redView.heightAnchor.constraint(equalToConstant: Size.itemHeight.rawValue),
            redView.leadingAnchor.constraint(equalTo: purpleView.leadingAnchor),
            redView.trailingAnchor.constraint(equalTo: purpleView.trailingAnchor),
            
            yellowView.topAnchor.constraint(equalTo: redView.bottomAnchor, constant: Size.itemSpace.rawValue),
            yellowView.heightAnchor.constraint(equalToConstant: Size.itemHeight.rawValue),
            yellowView.leadingAnchor.constraint(equalTo: purpleView.leadingAnchor),
            yellowView.trailingAnchor.constraint(equalTo: purpleView.trailingAnchor),
            
            button.topAnchor.constraint(equalTo: yellowView.bottomAnchor, constant: Size.itemSpace.rawValue),
            button.heightAnchor.constraint(equalToConstant: Size.itemHeight.rawValue),
            button.leadingAnchor.constraint(equalTo: purpleView.leadingAnchor),
            button.trailingAnchor.constraint(equalTo: purpleView.trailingAnchor),
            button.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -Size.offset.rawValue)
        ])
    }

    func height() -> CGFloat {
        var generalHeight = CGFloat()
        let itemsHeight = Size.itemHeight.rawValue * 4
        let itemsSpaceHeight = Size.itemSpace.rawValue * 3
        let offsetHeight = Size.offset.rawValue * 2
        generalHeight = CGFloat(itemsHeight) + CGFloat(itemsSpaceHeight) + CGFloat(offsetHeight)
        return generalHeight
    }
}
