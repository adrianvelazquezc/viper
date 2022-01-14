//
//  LoginMain.swift
//  Messenger
//
//  Created by Mac on 13/01/22.
//

import Foundation
import UIKit

open class LoginMain{
    public static func createModule(navigation: UINavigationController) -> UIViewController {
        let viewController: LoginView? = LoginView()
        if let view = viewController {
            let presenter = LoginPresenter()
            let router = LoginRouter()
            let interactor = LoginInteractor()
            
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
