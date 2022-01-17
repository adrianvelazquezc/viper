//
//  VideoPlayerViewUI.swift
//  Messenger
//
//  Created by Mac on 17/01/22.
//

import Foundation
import UIKit

protocol VideoPlayerViewUIDelegate {
    
}

class VideoPlayerViewUI: UIView{
    var delegate: VideoPlayerViewUIDelegate?
    var navigationController: UINavigationController?
    
    public convenience init(
        navigation: UINavigationController,
        delegate: VideoPlayerViewUIDelegate){
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
        self.backgroundColor = .white
    }
    
    func setConstraints(){
        NSLayoutConstraint.activate([
            
        ])
    }
}
