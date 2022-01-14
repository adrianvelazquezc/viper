//
//  ConversationsViewUI.swift
//  Messenger
//
//  Created by Mac on 13/01/22.
//

import Foundation
import UIKit

protocol ConversationsViewUIDelegate {
    func notifyNextView()
}

class ConversationsViewUI: UIView{
    var delegate: ConversationsViewUIDelegate?
    var navigationController: UINavigationController?
    
    public convenience init(
        navigation: UINavigationController,
        delegate: ConversationsViewUIDelegate){
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
        self.backgroundColor = .red
        self.delegate?.notifyNextView()
    }
    
    func setConstraints(){
        NSLayoutConstraint.activate([
            
        ])
    }
}
