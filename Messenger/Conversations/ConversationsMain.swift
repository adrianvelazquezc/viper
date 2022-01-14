//
//  ConversationsMain.swift
//  Messenger
//
//  Created by Mac on 13/01/22.
//

import Foundation
import UIKit

open class ConversationsMain{
    public static func createModule(navigation: UINavigationController) -> UIViewController {
        let viewController: ConversationsView? = ConversationsView()
        if let view = viewController {
            let presenter = ConversationsPresenter()
            let router = ConversationsRouter()
            let interactor = ConversationsInteractor()
            
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
