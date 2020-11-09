//
//  MainViewController.swift
//  CryptoManagerDemo
//
//  Created by Alex Nagy on 09/11/2020.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemTeal
        title = "Crypto Manager"
        
        presentPasswordViewController()
    }
    
    fileprivate func presentPasswordViewController() {
        let controller = PasswordViewController()
        controller.modalPresentationStyle = .fullScreen
        self.present(controller, animated: false, completion: nil)
    }
}

