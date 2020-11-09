//
//  PasswordViewController.swift
//  CryptoManagerDemo
//
//  Created by Alex Nagy on 09/11/2020.
//

import UIKit

class PasswordViewController: UIViewController {
    
    lazy var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.isSecureTextEntry = true
        textField.borderStyle = .roundedRect
        return textField
    }()
    
    lazy var submitButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Let me in", for: .normal)
        button.addTarget(self, action: #selector(submitButtonTapped), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemYellow
        layoutViews()
        checkMasterPassword()
    }
    
    fileprivate func layoutViews() {
        
        // MARK: - passwordTextField
        view.addSubview(passwordTextField)
        
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        passwordTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        passwordTextField.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -48).isActive = true
        
        // MARK: - submitButton
        view.addSubview(submitButton)
        
        submitButton.translatesAutoresizingMaskIntoConstraints = false
        submitButton.centerXAnchor.constraint(equalTo: passwordTextField.centerXAnchor).isActive = true
        submitButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 12).isActive = true
    }
    
    fileprivate func checkMasterPassword() {
//        CryptoManager.doesMasterPasswordExist { (result) in
//            switch result {
//            case .success(let exists):
//                if !exists {
//                    DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.3) {
//                        self.dismiss(animated: true, completion: nil)
//                    }
//                }
//            case .failure(let err):
//                Alert.show(error: err, on: self)
//            }
//        }
    }
    
    @objc
    func submitButtonTapped() {
        self.dismiss(animated: true, completion: nil)
//        guard let text = self.passwordTextField.text else { return }
//        CryptoManager.getMasterPassword { (result) in
//            switch result {
//            case .success(let password):
//                if password == text {
//                    self.dismiss(animated: true, completion: nil)
//                } else {
//                    Alert.showInfo(message: "Wrong password", on: self)
//                }
//            case .failure(let err):
//                Alert.show(error: err, on: self)
//            }
//        }
    }
}
