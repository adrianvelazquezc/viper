//
//  PhotoViewerMain.swift
//  Messenger
//
//  Created by Mac on 13/01/22.
//

import Foundation
import UIKit

open class PhotoViewerMain{
    public static func createModule(navigation: UINavigationController) -> UIViewController {
        let viewController: PhotoViewerView? = PhotoViewerView()
        if let view = viewController {
            let presenter = PhotoViewerPresenter()
            let router = PhotoViewerRouter()
            let interactor = PhotoViewerInteractor()
            
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
