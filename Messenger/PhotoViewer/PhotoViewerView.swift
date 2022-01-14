//
//  PhotoViewerView.swift
//  Messenger
//
//  Created by Mac on 13/01/22.
//

import Foundation
import UIKit

class PhotoViewerView: UIViewController {
    var presenter: PhotoViewerPresenterProtocol?
    private var ui: PhotoViewerViewUI?
    
    override func loadView() {
        ui = PhotoViewerViewUI(
            navigation: self.navigationController!,
            delegate: self
        )
        view = ui
    }
}

extension PhotoViewerView: PhotoViewerViewProtocol {
    
}

extension PhotoViewerView: PhotoViewerViewUIDelegate {
    
}
