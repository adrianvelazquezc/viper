//
//  ProfilePresenter.swift
//  Messenger
//
//  Created by Mac on 17/01/22.
//

import Foundation

class ProfilePresenter {
    var interactor: ProfileInteractorProtocol?
    weak var view: ProfileViewProtocol?
    var router: ProfileRouterProtocol?
}



extension ProfilePresenter: ProfilePresenterProtocol {
    func requestNextView() {
        router?.navigateNextView()
    }
    
    
}
