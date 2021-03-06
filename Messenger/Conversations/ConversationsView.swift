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
        navigationItem.title = "Chat"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    // esconder navigation bar
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
}


extension ConversationsView: ConversationsViewProtocol {
    
}

extension ConversationsView: ConversationsViewUIDelegate {
    func notifyNextView() {
        
        
        self.presenter?.requestNextView()
    }
    
    
}
