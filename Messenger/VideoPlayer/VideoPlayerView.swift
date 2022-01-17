//
//  VideoPlayerView.swift
//  Messenger
//
//  Created by Mac on 17/01/22.
//

import Foundation
import UIKit

class VideoPlayerView: UIViewController {
    var presenter: VideoPlayerPresenterProtocol?
    private var ui: VideoPlayerViewUI?
    
    override func loadView() {
        ui = VideoPlayerViewUI(
            navigation: self.navigationController!,
            delegate: self
        )
        view = ui
    }
}

extension VideoPlayerView: VideoPlayerViewProtocol {
    
}

extension VideoPlayerView: VideoPlayerViewUIDelegate {
    
}
