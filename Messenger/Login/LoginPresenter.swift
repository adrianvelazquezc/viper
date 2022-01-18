//
//  LoginPresenter.swift
//  Messenger
//
//  Created by Mac on 13/01/22.
//

import Foundation

class LoginPresenter {
    var interactor: LoginInteractorProtocol?
    weak var view: LoginViewProtocol?
    var router: LoginRouterProtocol?
}



extension LoginPresenter: LoginPresenterProtocol {
    func requestLogedInView() {
        self.router?.navigateLogedInView()
    }
    
    func requestNextView() {
        self.router?.navigateNextView()
    }
    
    
}
