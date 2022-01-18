//
//  ProfileView.swift
//  Messenger
//
//  Created by Mac on 17/01/22.
//

import Foundation
import UIKit
import FirebaseAuth

class ProfileView: UIViewController {
    var presenter: ProfilePresenterProtocol?
    private var ui: ProfileViewUI?
    
    override func loadView() {
        ui = ProfileViewUI(
            navigation: self.navigationController!,
            delegate: self
        )
        view = ui
        navigationItem.title = "Profile"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    // esconder navigation bar
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    func presentProfileActionSheet(){
        
        let actionSheet = UIAlertController(title: "",
                                            message: "",
                                            preferredStyle: .actionSheet)
        actionSheet.addAction(UIAlertAction(title: "Log Out", style: .destructive, handler: { [weak self] _ in
            guard let strongSelf = self else {
                return
            }
            
            do {
                try FirebaseAuth.Auth.auth().signOut()
                self?.presenter?.requestLogOut()
            }
            catch {
                print("failed to log out")
            }
            
        }))
        
        actionSheet.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
        self.present(actionSheet, animated: true, completion: nil)
    }
    
}

extension ProfileView: ProfileViewProtocol {
    
}

extension ProfileView: ProfileViewUIDelegate {
    func notifySheet() {
        self.presentProfileActionSheet()
    }
    
    func notifyNextView() {
        self.presenter?.requestNextView()
    }
    
    
}
