//
//  ProfileProtocols.swift
//  Messenger
//
//  Created by Mac on 17/01/22.
//

import Foundation

protocol ProfileViewProtocol: AnyObject {
    
}

protocol ProfileInteractorProtocol: AnyObject {
    
}

protocol ProfilePresenterProtocol: AnyObject {
    func requestNextView()
}

protocol ProfileRouterProtocol: AnyObject {
    func navigateNextView()
}
