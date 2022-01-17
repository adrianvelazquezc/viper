//
//  VideoPlayerPresenter.swift
//  Messenger
//
//  Created by Mac on 17/01/22.
//

import Foundation

class VideoPlayerPresenter {
    var interactor: VideoPlayerInteractorProtocol?
    weak var view: VideoPlayerViewProtocol?
    var router: VideoPlayerRouterProtocol?
}



extension VideoPlayerPresenter: VideoPlayerPresenterProtocol {
    
}
