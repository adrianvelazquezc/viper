//
//  PhotoViewerPresenter.swift
//  Messenger
//
//  Created by Mac on 13/01/22.
//

import Foundation

class PhotoViewerPresenter {
    var interactor: PhotoViewerInteractorProtocol?
    weak var view: PhotoViewerViewProtocol?
    var router: PhotoViewerRouterProtocol?
}



extension PhotoViewerPresenter: PhotoViewerPresenterProtocol {
    
}
