//
//  VideoPlayerPresenter.swift
//  Messenger
//
//  Created by Mac on 13/01/22.
//

import Foundation

class VideoPlayerPresenter {
    var interactor: VideoPlayerInteractorProtocol?
    weak var view: VideoPlayerViewProtocol?
    var router: VideoPlayerRouterProtocol?
}



extension VideoPlayerPresenter: VideoPlayerPresenterProtocol {
    
}
