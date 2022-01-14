//
//  RegisterPresenter.swift
//  Messenger
//
//  Created by Mac on 13/01/22.
//

import Foundation

class RegisterPresenter {
    var interactor: RegisterInteractorProtocol?
    weak var view: RegisterViewProtocol?
    var router: RegisterRouterProtocol?
}



extension RegisterPresenter: RegisterPresenterProtocol {
    
}
