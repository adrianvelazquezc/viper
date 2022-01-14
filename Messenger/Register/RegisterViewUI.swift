//
//  RegisterViewUI.swift
//  Messenger
//
//  Created by Mac on 13/01/22.
//

import Foundation
import UIKit

protocol RegisterViewUIDelegate {
    
}

class RegisterViewUI: UIView{
    var delegate: RegisterViewUIDelegate?
    var navigationController: UINavigationController?
    
    
    private let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.clipsToBounds = true
        return scrollView
    }()
    
    public convenience init(
        navigation: UINavigationController,
        delegate: RegisterViewUIDelegate){
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
        self.backgroundColor = .link
        self.addSubview(scrollView)
    }
    
    func setConstraints(){
        NSLayoutConstraint.activate([
            
                scrollView.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
                scrollView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0),
                scrollView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0),
                scrollView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -20),
        ])
    }
}
