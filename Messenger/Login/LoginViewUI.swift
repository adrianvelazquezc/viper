//
//  LoginViewUI.swift
//  Messenger
//
//  Created by Mac on 13/01/22.
//

import Foundation
import UIKit

protocol LoginViewUIDelegate {
    
    func notifyView()
}

class LoginViewUI: UIView{
    var delegate: LoginViewUIDelegate?
    var navigationController: UINavigationController?
    
    //Controles
    private let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.clipsToBounds = true
        return scrollView
    }()
    
    private let logInLabel: UILabel = {
        let Label = UILabel()
        Label.translatesAutoresizingMaskIntoConstraints = false
        Label.text = "Log In"
        return Label
    }()
    private let signInButton: UIButton = {
        let Button = UIButton()
        Button.translatesAutoresizingMaskIntoConstraints = false
        Button.setTitle("Register", for: .normal)
        Button.setTitleColor(.link, for: .normal)
        Button.addTarget(self, action: #selector(didTapRegister), for: .touchUpInside)
        return Button
    }()
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "logo")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private let emailField: UITextField = {
        let field = UITextField()
        field.translatesAutoresizingMaskIntoConstraints = false
        field.autocapitalizationType = .none
        field.autocorrectionType = .no
        field.returnKeyType = .continue
        field.layer.cornerRadius = 12
        field.layer.borderWidth = 1
        field.layer.borderColor = UIColor.lightGray.cgColor
        field.placeholder = "Email Address..."
        field.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 5, height: 0))
        field.leftViewMode = .always
        field.backgroundColor = .white
        return field
    }()
    private let passwordField: UITextField = {
        let field = UITextField()
        field.translatesAutoresizingMaskIntoConstraints = false
        field.autocapitalizationType = .none
        field.autocorrectionType = .no
        field.returnKeyType = .continue
        field.layer.cornerRadius = 12
        field.layer.borderWidth = 1
        field.layer.borderColor = UIColor.lightGray.cgColor
        field.placeholder = "Password ..."
        field.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 5, height: 0))
        field.leftViewMode = .always
        field.backgroundColor = .white
        field.isSecureTextEntry = true
        return field
    }()
    
    public convenience init(
        navigation: UINavigationController,
        delegate: LoginViewUIDelegate){
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
        self.addSubview(scrollView)
        scrollView.addSubview(logInLabel)
        scrollView.addSubview(signInButton)
        scrollView.addSubview(imageView)
        scrollView.addSubview(emailField)
        scrollView.addSubview(passwordField)
        
    }
    
    func setConstraints(){
        NSLayoutConstraint.activate([
            
                scrollView.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
                scrollView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0),
                scrollView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0),
                scrollView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -20),
                
                logInLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
                logInLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
                
                
                signInButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
                signInButton.leadingAnchor.constraint(equalTo: logInLabel.trailingAnchor, constant: -20),
//                signInButton.centerYAnchor.constraint(equalTo: logInLabel.centerYAnchor),
                
                imageView.topAnchor.constraint(equalTo: logInLabel.bottomAnchor),
                imageView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
                imageView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
                imageView.heightAnchor.constraint(equalToConstant: 100),
                
                emailField.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 20),
                emailField.centerXAnchor.constraint(equalTo: self.centerXAnchor),
                emailField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
                emailField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
                emailField.heightAnchor.constraint(equalToConstant: 40),
                
                passwordField.topAnchor.constraint(equalTo: emailField.bottomAnchor, constant: 20),
                passwordField.centerXAnchor.constraint(equalTo: self.centerXAnchor),
                passwordField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
                passwordField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
                passwordField.heightAnchor.constraint(equalToConstant: 40),
        ])
    }
    
    @objc func didTapRegister() {
        print("algo")
        self.delegate?.notifyView()
    }
}
