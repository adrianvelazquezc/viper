//
//  LoginView.swift
//  Messenger
//
//  Created by Mac on 13/01/22.
//

import Foundation
import UIKit

class LoginView: UIViewController {
    var presenter: LoginPresenterProtocol?
    private var ui: LoginViewUI?
    
    override func loadView() {
        ui = LoginViewUI(
            navigation: self.navigationController!,
            delegate: self
        )
        navigationItem.title = "Sign in"
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Register",
                            style: .done,
                            target: self,
                            action: #selector(didTapRegister))
        
        view = ui
    }
    
    
    func showError(message: String){
        let alert = UIAlertController(title: "Woops", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: nil))
        self.present(alert, animated: true, completion: nil)
        
    }
}

extension LoginView: LoginViewProtocol {
    
    
}

extension LoginView: LoginViewUIDelegate {
    func notifyFailureError(messageError: String) {
            self.showError(message: messageError)
    }
    
    
    @objc func didTapRegister() {
        self.presenter?.requestNextView()
    }
    }
    
    

