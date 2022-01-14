//
//  LoginRouter.swift
//  Messenger
//
//  Created by Mac on 13/01/22.
//

import Foundation
import UIKit

class LoginRouter{
    var navigation: UINavigationController?
}

extension LoginRouter: LoginRouterProtocol{
    func navigateNextView() {
            if let nav = self.navigation {
                let vc = RegisterMain.createModule(navigation: nav)
                nav.pushViewController(vc, animated: true)
            }
    }
    
    
}
