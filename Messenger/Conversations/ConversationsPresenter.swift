//
//  ConversationsPresenter.swift
//  Messenger
//
//  Created by Mac on 13/01/22.
//

import Foundation

class ConversationsPresenter {
    var interactor: ConversationsInteractorProtocol?
    weak var view: ConversationsViewProtocol?
    var router: ConversationsRouterProtocol?
}



extension ConversationsPresenter: ConversationsPresenterProtocol {
    func requestNextView() {
        self.router?.navigateNextView()
    }
    
    
}
