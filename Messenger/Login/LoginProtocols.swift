//
//  LoginProtocols.swift
//  Messenger
//
//  Created by Mac on 13/01/22.
//

import Foundation

protocol LoginViewProtocol: AnyObject {
}

protocol LoginInteractorProtocol: AnyObject {
    
}

protocol LoginPresenterProtocol: AnyObject {
    func requestNextView()
}

protocol LoginRouterProtocol: AnyObject {
    func navigateNextView()
}
