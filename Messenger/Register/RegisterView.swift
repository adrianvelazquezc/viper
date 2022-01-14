//
//  RegisterView.swift
//  Messenger
//
//  Created by Mac on 13/01/22.
//

import Foundation
import UIKit

class RegisterView: UIViewController {
    var presenter: RegisterPresenterProtocol?
    private var ui: RegisterViewUI?
    
    override func loadView() {
        ui = RegisterViewUI(
            navigation: self.navigationController!,
            delegate: self
            
            
        )
        

        navigationItem.title = "Register"
        //self.navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white] // cambia de color las letras del navigation bar
        //self.navigationController?.navigationBar.tintColor = .white // cambia de color la flecha de regreso y su texto

        view = ui
    }
    
    
    func showError(message: String){
        let alert = UIAlertController(title: "Woops", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: nil))
        self.present(alert, animated: true, completion: nil)
        
    }
    
    
    func presentPhotoActionSheet(){
        let actionSheet = UIAlertController(title: "Profile Picture", message: "How would you like to select a picture?", preferredStyle: .actionSheet)
        actionSheet.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        actionSheet.addAction(UIAlertAction(title: "Take Photo", style: .default, handler: {[weak self]_ in
            self?.ui?.presentCamera()
        } ))
        actionSheet.addAction(UIAlertAction(title: "Choose Photo", style: .default, handler:  {[weak self]_ in
            self?.ui?.presentPhootoPicker()
        }))
        
        
        self.present(actionSheet, animated: true, completion: nil)
    }
    
    func presentPickerController(optionChoosen: UIImagePickerController){
        self.present(optionChoosen, animated: true, completion: nil)
    }
    
}

extension RegisterView: RegisterViewProtocol {
    
}

extension RegisterView: RegisterViewUIDelegate {
    func notifyOption(optionChoosen: UIImagePickerController) {
        presentPickerController(optionChoosen: optionChoosen)
    }
    
    func notifyAlert() {
        self.presentPhotoActionSheet()
    }
    
    func notifyFailureError(messageError: String) {
                self.showError(message: messageError)
    }
    
    
}
