//
//  ConversationsProtocols.swift
//  Messenger
//
//  Created by Mac on 13/01/22.
//

import Foundation

protocol ConversationsViewProtocol: AnyObject {
    
}

protocol ConversationsInteractorProtocol: AnyObject {
}

protocol ConversationsPresenterProtocol: AnyObject {
    func requestNextView()
}

protocol ConversationsRouterProtocol: AnyObject {
    func navigateNextView()
}
