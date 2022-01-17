//
//  NewConversationsMain.swift
//  Messenger
//
//  Created by Mac on 17/01/22.
//

import Foundation
import UIKit

open class NewConversationsMain{
    public static func createModule(navigation: UINavigationController) -> UIViewController {
        let viewController: NewConversationsView? = NewConversationsView()
        if let view = viewController {
            let presenter = NewConversationsPresenter()
            let router = NewConversationsRouter()
            let interactor = NewConversationsInteractor()
            
            view.presenter = presenter
            
            presenter.view = view
            presenter.interactor = interactor
            presenter.router = router
            
            router.navigation = navigation
            
            interactor.presenter = presenter
            return view
        }
        return UIViewController()
    }
}
