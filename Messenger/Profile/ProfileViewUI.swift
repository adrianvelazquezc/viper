//
//  ProfileViewUI.swift
//  Messenger
//
//  Created by Mac on 17/01/22.
//

import Foundation
import UIKit

protocol ProfileViewUIDelegate {
    func notifyNextView()
}

class ProfileViewUI: UIView{
    var delegate: ProfileViewUIDelegate?
    var navigationController: UINavigationController?
    
    private lazy var titleLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Profile"
        label.font = UIFont.boldSystemFont(ofSize: 40.0)
        return label
    }()
    
    private lazy var item1Button: UIButton = {
       let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Chats", for: .normal)
        button.layer.borderWidth = 0.5
        button.layer.borderColor = UIColor.lightGray.cgColor
        button.addTarget(self, action:#selector(tabBarTouched), for: .touchUpInside)
        return button
    }()
    private lazy var item2Button: UIButton = {
       let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Profile", for: .normal)
        button.layer.borderWidth = 0.5
        button.layer.borderColor = UIColor.lightGray.cgColor
        return button
    }()
    
    
    public convenience init(
        navigation: UINavigationController,
        delegate: ProfileViewUIDelegate){
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
        self.backgroundColor = .gray
        self.addSubview(titleLabel)
        self.addSubview(item1Button)
        self.addSubview(item2Button)
    }
    
    func setConstraints(){
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
            titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 20),
            titleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            titleLabel.heightAnchor.constraint(equalToConstant: 100),
            
            item1Button.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
            item1Button.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            item1Button.trailingAnchor.constraint(equalTo: self.centerXAnchor),
            
                item2Button.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
                item2Button.trailingAnchor.constraint(equalTo: self.trailingAnchor),
                item2Button.leadingAnchor.constraint(equalTo: self.centerXAnchor),
            
        ])
    }
    @objc func tabBarTouched(){
        self.delegate?.notifyNextView()
        }
    
}

