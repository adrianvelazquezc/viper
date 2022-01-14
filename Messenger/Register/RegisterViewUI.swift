//
//  RegisterViewUI.swift
//  Messenger
//
//  Created by Mac on 13/01/22.
//

import Foundation
import UIKit

protocol RegisterViewUIDelegate {
    func notifyFailureError(messageError: String)
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
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "logo")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    
    private let firstNameField: UITextField = {
        let field = UITextField()
        field.translatesAutoresizingMaskIntoConstraints = false
        field.autocapitalizationType = .none
        field.autocorrectionType = .no
        field.returnKeyType = .continue
        field.layer.cornerRadius = 12
        field.layer.borderWidth = 1
        field.layer.borderColor = UIColor.lightGray.cgColor
        field.placeholder = "First Name..."
        field.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: 0))
        field.leftViewMode = .always
        field.backgroundColor = .white
        return field
    }()
    
    
    private let secondNameField: UITextField = {
        let field = UITextField()
        field.translatesAutoresizingMaskIntoConstraints = false
        field.autocapitalizationType = .none
        field.autocorrectionType = .no
        field.returnKeyType = .continue
        field.layer.cornerRadius = 12
        field.layer.borderWidth = 1
        field.layer.borderColor = UIColor.lightGray.cgColor
        field.placeholder = "Second Name..."
        field.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: 0))
        field.leftViewMode = .always
        field.backgroundColor = .white
        return field
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
        field.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: 0))
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
        field.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: 0))
        field.leftViewMode = .always
        field.backgroundColor = .white
        field.isSecureTextEntry = true
        return field
    }()
    
    private let loginButton:  UIButton = {
    let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Register", for: .normal)
        button.backgroundColor = .green
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 12
        button.layer.masksToBounds = true
        button.titleLabel?.font = .systemFont(ofSize: 20, weight: .bold)
        button.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
        return button
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
        scrollView.addSubview(imageView)
        scrollView.addSubview(firstNameField)
        scrollView.addSubview(secondNameField)
        scrollView.addSubview(emailField)
        scrollView.addSubview(passwordField)
        scrollView.addSubview(loginButton)
    }
    
    func setConstraints(){
        NSLayoutConstraint.activate([
            
                scrollView.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
                scrollView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0),
                scrollView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0),
                scrollView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -20),
                
                imageView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
                imageView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
                imageView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
                imageView.heightAnchor.constraint(equalToConstant: 100),
                
                firstNameField.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 20),
                firstNameField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
                firstNameField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
                firstNameField.heightAnchor.constraint(equalToConstant: 40),
                
                secondNameField.topAnchor.constraint(equalTo: firstNameField.bottomAnchor, constant: 20),
                secondNameField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
                secondNameField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
                secondNameField.heightAnchor.constraint(equalToConstant: 40),
                
                emailField.topAnchor.constraint(equalTo: secondNameField.bottomAnchor, constant: 20),
                emailField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
                emailField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
                emailField.heightAnchor.constraint(equalToConstant: 40),
                
                passwordField.topAnchor.constraint(equalTo: emailField.bottomAnchor, constant: 20),
                passwordField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
                passwordField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
                passwordField.heightAnchor.constraint(equalToConstant: 40),
                
                loginButton.topAnchor.constraint(equalTo: passwordField.bottomAnchor, constant:  50),
                loginButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
                loginButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
        ])
    }
    
    
    @objc private func didTapChangeProfilePic(){
        
    }
    
    @objc private func loginButtonTapped(){
        firstNameField.resignFirstResponder()
        secondNameField.resignFirstResponder()
        emailField.resignFirstResponder()
        passwordField.resignFirstResponder()
        guard let firstName = firstNameField.text,
              let secondName = secondNameField.text,
              let email = emailField.text,
              let password = passwordField.text,
              !firstName.isEmpty,
              !secondName.isEmpty,
              !email.isEmpty,
              !password.isEmpty,
              password.count >= 6 else {
                  self.delegate?.notifyFailureError(messageError: "please enter all information to create a new account")
                  return
              }
    }
    
}
    extension RegisterViewUI: UITextFieldDelegate{
        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            
            if textField == emailField{
                passwordField.becomeFirstResponder()
            }
            else if textField == passwordField{
                loginButtonTapped()
            }
            return true
        }
}
