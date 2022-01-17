//
//  ProfileView.swift
//  Messenger
//
//  Created by Mac on 17/01/22.
//

import Foundation
import UIKit

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
}

extension ProfileView: ProfileViewProtocol {
    
}

extension ProfileView: ProfileViewUIDelegate {
    func notifyNextView() {
        self.presenter?.requestNextView()
    }
    
    
}
