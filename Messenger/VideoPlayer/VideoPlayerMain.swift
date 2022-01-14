//
//  VideoPlayerMain.swift
//  Messenger
//
//  Created by Mac on 13/01/22.
//

import Foundation
import UIKit

open class VideoPlayerMain{
    public static func createModule(navigation: UINavigationController) -> UIViewController {
        let viewController: VideoPlayerView? = VideoPlayerView()
        if let view = viewController {
            let presenter = VideoPlayerPresenter()
            let router = VideoPlayerRouter()
            let interactor = VideoPlayerInteractor()
            
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
