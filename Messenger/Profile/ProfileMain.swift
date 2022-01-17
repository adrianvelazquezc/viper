//
//  ProfileMain.swift
//  Messenger
//
//  Created by Mac on 17/01/22.
//

import Foundation
import UIKit

open class ProfileMain{
    public static func createModule(navigation: UINavigationController) -> UIViewController {
        let viewController: ProfileView? = ProfileView()
        if let view = viewController {
            let presenter = ProfilePresenter()
            let router = ProfileRouter()
            let interactor = ProfileInteractor()
            
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
