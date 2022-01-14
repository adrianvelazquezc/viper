//
//  NewConversationsView.swift
//  Messenger
//
//  Created by Mac on 13/01/22.
//

import Foundation
import UIKit

class NewConversationsView: UIViewController {
    var presenter: NewConversationsPresenterProtocol?
    private var ui: NewConversationsViewUI?
    
    override func loadView() {
        ui = NewConversationsViewUI(
            navigation: self.navigationController!,
            delegate: self
        )
        view = ui
    }
}

extension NewConversationsView: NewConversationsViewProtocol {
    
}

extension NewConversationsView: NewConversationsViewUIDelegate {
    
}
