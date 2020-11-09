//
//  MainViewController.swift
//  CryptoManagerDemo
//
//  Created by Alex Nagy on 09/11/2020.
//

import UIKit

class MainViewController: UIViewController {
    
    lazy var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.isSecureTextEntry = true
        textField.borderStyle = .roundedRect
        return textField
    }()
    
    lazy var submitButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Set master password", for: .normal)
        button.addTarget(self, action: #selector(submitButtonTapped), for: .touchUpInside)
        return button
    }()
    
    lazy var deleteButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Delete master password", for: .normal)
        button.addTarget(self, action: #selector(deleteButtonTapped), for: .touchUpInside)
        return button
    }()
    
    lazy var clearButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Clear Crypto Manager", for: .normal)
        button.addTarget(self, action: #selector(clearButtonTapped), for: .touchUpInside)
        return button
    }()
    
    lazy var showPasswordViewControllerButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Show Password View Controller", for: .normal)
        button.addTarget(self, action: #selector(showPasswordViewControllerButtonTapped), for: .touchUpInside)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Crypto Manager"
        
        layoutViews()
        presentPasswordViewController()
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
        
        // MARK: - deleteButton
        view.addSubview(deleteButton)
        
        deleteButton.translatesAutoresizingMaskIntoConstraints = false
        deleteButton.centerXAnchor.constraint(equalTo: passwordTextField.centerXAnchor).isActive = true
        deleteButton.topAnchor.constraint(equalTo: submitButton.bottomAnchor, constant: 12).isActive = true
        
        // MARK: - showPasswordViewControllerButton
        view.addSubview(showPasswordViewControllerButton)
        
        // MARK: - deleteButton
        view.addSubview(clearButton)
        
        clearButton.translatesAutoresizingMaskIntoConstraints = false
        clearButton.centerXAnchor.constraint(equalTo: passwordTextField.centerXAnchor).isActive = true
        clearButton.topAnchor.constraint(equalTo: deleteButton.bottomAnchor, constant: 12).isActive = true
        
        showPasswordViewControllerButton.translatesAutoresizingMaskIntoConstraints = false
        showPasswordViewControllerButton.centerXAnchor.constraint(equalTo: passwordTextField.centerXAnchor).isActive = true
        showPasswordViewControllerButton.topAnchor.constraint(equalTo: clearButton.bottomAnchor, constant: 12).isActive = true
    }
    
    fileprivate func presentPasswordViewController() {
        let controller = PasswordViewController()
        controller.modalPresentationStyle = .fullScreen
        self.present(controller, animated: true, completion: nil)
    }
    
    @objc
    func submitButtonTapped() {
        guard let text = self.passwordTextField.text else { return }
        if text.isEmpty {
            Alert.showInfo(message: "Password must not be empty", on: self)
            return
        }
//        CryptoManager.setMasterPassword(text) { (result) in
//            switch result {
//            case .success(let finished):
//                Alert.showInfo(message: "Set with success: \(finished)", on: self)
//            case .failure(let err):
//                Alert.show(error: err, on: self)
//            }
//        }
    }
    
    @objc
    func deleteButtonTapped() {
//        CryptoManager.deleteMasterPassword { (result) in
//            switch result {
//            case .success(let finished):
//                Alert.showInfo(message: "Deleted with success: \(finished)", on: self)
//            case .failure(let err):
//                Alert.show(error: err, on: self)
//            }
//        }
    }
    
    @objc
    func clearButtonTapped() {
//        CryptoManager.clear() { (result) in
//            switch result {
//            case .success(let finished):
//                Alert.showInfo(message: "Cleared with success: \(finished)", on: self)
//            case .failure(let err):
//                Alert.show(error: err, on: self)
//            }
//        }
    }
    
    @objc
    func showPasswordViewControllerButtonTapped() {
        presentPasswordViewController()
    }
}

