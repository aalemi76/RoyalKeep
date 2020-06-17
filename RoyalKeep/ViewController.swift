//
//  ViewController.swift
//  RoyalKeep
//
//  Created by Catalina on 6/17/20.
//  Copyright © 2020 Deep Minds. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //MARK:- Variable
    let armanButton = UIButton(type: .system)
    let amirhosseinButton = UIButton(type: .system)
    let alirezaButton = UIButton(type: .system)
    //MARK:- Actions
    //MARK:- View Controller Life Cycle
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    //MARK:- View Layout
    func configureView() {
        add(button: armanButton, title: "Arman")
        configure(button: armanButton, distance: -100)
        add(button: amirhosseinButton, title: "Amirhossein")
        configure(button: amirhosseinButton, distance: 0)
        add(button: alirezaButton, title: "Alireza")
        configure(button: alirezaButton, distance: 100)
    }
    func add(button: UIButton, title:String) {
        button.setTitle(title, for: .normal)
        button.setTitleColor(.darkGray, for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 20)
        button.layer.cornerRadius = 5
        button.layer.masksToBounds = true
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.darkGray.cgColor
    }
    func configure(button: UIButton, distance: CGFloat) {
        button.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button)
        NSLayoutConstraint.activate([
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: distance),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.widthAnchor.constraint(equalToConstant: 150),
            button.heightAnchor.constraint(equalToConstant: 50)])
    }
}

