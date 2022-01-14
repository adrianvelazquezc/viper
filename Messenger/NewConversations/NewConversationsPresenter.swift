//
//  NewConversationsPresenter.swift
//  Messenger
//
//  Created by Mac on 13/01/22.
//

import Foundation

class NewConversationsPresenter {
    var interactor: NewConversationsInteractorProtocol?
    weak var view: NewConversationsViewProtocol?
    var router: NewConversationsRouterProtocol?
}



extension NewConversationsPresenter: NewConversationsPresenterProtocol {
    
}
