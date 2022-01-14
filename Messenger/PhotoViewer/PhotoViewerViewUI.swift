//
//  PhotoViewerViewUI.swift
//  Messenger
//
//  Created by Mac on 13/01/22.
//

import Foundation
import UIKit

protocol PhotoViewerViewUIDelegate {
    
}

class PhotoViewerViewUI: UIView{
    var delegate: PhotoViewerViewUIDelegate?
    var navigationController: UINavigationController?
    
    public convenience init(
        navigation: UINavigationController,
        delegate: PhotoViewerViewUIDelegate){
            self.init()
            self.delegate = delegate
            self.navigationController = navigation
            
            setUI()
            setConstraints()
        }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func setUI(){
        
    }
    
    func setConstraints(){
        NSLayoutConstraint.activate([
            
        ])
    }
}
