//
//  AlirezaViewController.swift
//  RoyalKeep
//
//  Created by Catalina on 6/18/20.
//  Copyright © 2020 Deep Minds. All rights reserved.
//

import UIKit

class AlirezaViewController: UIViewController {
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
        title = "Alireza"
        navigationController?.navigationBar.tintColor = .purple
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .purple
    }
}
