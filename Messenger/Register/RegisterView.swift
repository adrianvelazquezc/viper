//
//  RegisterView.swift
//  Messenger
//
//  Created by Mac on 13/01/22.
//

import Foundation
import UIKit

class RegisterView: UIViewController {
    var presenter: RegisterPresenterProtocol?
    private var ui: RegisterViewUI?
    
    override func loadView() {
        ui = RegisterViewUI(
            navigation: self.navigationController!,
            delegate: self
            
            
        )
        

        navigationItem.title = "Register"
        self.navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white] // cambia de color las letras del navigation bar
        self.navigationController?.navigationBar.tintColor = .white // cambia de color la flecha de regreso y su texto

        view = ui
    }
}

extension RegisterView: RegisterViewProtocol {
    
}

extension RegisterView: RegisterViewUIDelegate {
    
}
