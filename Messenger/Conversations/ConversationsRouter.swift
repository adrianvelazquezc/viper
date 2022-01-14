//
//  ConversationsRouter.swift
//  Messenger
//
//  Created by Mac on 13/01/22.
//

import Foundation
import UIKit

class ConversationsRouter{
    var navigation: UINavigationController?
}

extension ConversationsRouter: ConversationsRouterProtocol{
    func navigateNextView() {
        if let nav = self.navigation {
            let vc = LoginMain.createModule(navigation: nav)
            nav.pushViewController(vc, animated: true)
    }
    }
    
}
