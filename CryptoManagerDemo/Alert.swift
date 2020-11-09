//
//  Alert.swift
//  CryptoManagerDemo
//
//  Created by Alex Nagy on 09/11/2020.
//

import UIKit

/// `UIAlertController` implementation
struct Alert {
    
    /// Show alert
    /// - Parameters:
    ///   - style: Alert Style. Defaults to `.alert`
    ///   - title: Title
    ///   - message: Message
    ///   - actions: Actions
    ///   - viewController: View Controller to be presented on
    static func show(_ style: UIAlertController.Style = .alert,
                     title: String?,
                     message: String?,
                     actions: [UIAlertAction],
                     on viewController: UIViewController) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: style)
        
        actions.forEach { (action) in
            alert.addAction(action)
        }
        
        alert.popoverPresentationController?.sourceRect = CGRect(x: UIScreen.main.bounds.midX, y: UIScreen.main.bounds.midY, width: 0, height: 0)
        viewController.present(alert, animated: true, completion: nil)
    }
    
    /// Show Alert with `Error`
    /// - Parameters:
    ///   - style: Alert Style. Defaults to `.alert`
    ///   - error: `Error`
    ///   - viewController: View Controller to be presented on
    static func show(_ style: UIAlertController.Style = .alert,
                     error: Error,
                     on viewController: UIViewController) {
        
        let okAction = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
        show(style, title: "Error", message: error.localizedDescription, actions: [okAction], on: viewController)
    }
    
    /// Show Alert with Error message
    /// - Parameters:
    ///   - style: Alert Style. Defaults to `.alert`
    ///   - message: Message
    ///   - viewController: View Controller to be presented on
    static func showError(_ style: UIAlertController.Style = .alert,
                          message: String,
                          on viewController: UIViewController) {
        
        let okAction = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
        show(style, title: "Error", message: message, actions: [okAction], on: viewController)
    }
    
    /// Show Alert with Success
    /// - Parameters:
    ///   - style: Alert Style. Defaults to `.alert`
    ///   - message: Message
    ///   - viewController: View Controller to be presented on
    static func showSuccess(_ style: UIAlertController.Style = .alert,
                            message: String,
                            on viewController: UIViewController) {
        
        let okAction = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
        show(style, title: "Success", message: message, actions: [okAction], on: viewController)
    }
    
    /// Show Alert with Warning
    /// - Parameters:
    ///   - style: Alert Style. Defaults to `.alert`
    ///   - message: Message
    ///   - viewController: View Controller to be presented on
    static func showWarning(_ style: UIAlertController.Style = .alert,
                            message: String,
                            on viewController: UIViewController) {
        
        let okAction = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
        show(style, title: "Warning", message: message, actions: [okAction], on: viewController)
    }
    
    /// Show Alert with Info
    /// - Parameters:
    ///   - style: Alert Style. Defaults to `.alert`
    ///   - message: Message
    ///   - viewController: View Controller to be presented on
    static func showInfo(_ style: UIAlertController.Style = .alert,
                         message: String,
                         on viewController: UIViewController) {
        
        let okAction = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
        show(style, title: "Info", message: message, actions: [okAction], on: viewController)
    }
    
    /// Show Alert with Error Message: Something went wrong
    /// - Parameters:
    ///   - style: Alert Style. Defaults to `.alert`
    ///   - viewController: View Controller to be presented on
    static func showErrorSomethingWentWrong(_ style: UIAlertController.Style = .alert,
                                            on viewController: UIViewController) {
        
        let okAction = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
        show(style, title: "Error", message: "Something went wrong", actions: [okAction], on: viewController)
    }
    
}

