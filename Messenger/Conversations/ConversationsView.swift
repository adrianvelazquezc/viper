//
//  ConversationsView.swift
//  Messenger
//
//  Created by Mac on 13/01/22.
//

import Foundation
import UIKit
import Firebase

class ConversationsView: UIViewController {
    var presenter: ConversationsPresenterProtocol?
    private var ui: ConversationsViewUI?
    
    override func loadView() {
        ui = ConversationsViewUI(
            navigation: self.navigationController!,
            delegate: self
        )
        view = ui
    }
}

extension ConversationsView: ConversationsViewProtocol {
    
}

extension ConversationsView: ConversationsViewUIDelegate {
    func notifyNextView() {
        
        if Firebase.Auth.auth().currentUser == nil{
        
        self.presenter?.requestNextView()
        }
    }
    
    
}
