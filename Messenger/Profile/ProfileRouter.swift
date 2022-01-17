//
//  ProfileRouter.swift
//  Messenger
//
//  Created by Mac on 17/01/22.
//

import Foundation
import UIKit

class ProfileRouter{
    var navigation: UINavigationController?
}

extension ProfileRouter: ProfileRouterProtocol{
    func navigateNextView() {
        if let nav = self.navigation {
            let vc = ConversationsMain.createModule(navigation: nav)
            nav.pushViewController(vc, animated: false)
    }
    }
}
