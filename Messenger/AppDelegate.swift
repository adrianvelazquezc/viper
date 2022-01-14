//
//  AppDelegate.swift
//  Messenger
//
//  Created by Mac on 13/01/22.
//

import UIKit
 
@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let navigation = UINavigationController()
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = navigation
        window?.makeKeyAndVisible() //para hacerla la principal y visible
        //navigation.isNavigationBarHidden = true
        
        let vc = LoginMain.createModule(navigation: navigation)
        //let vc = RegisterMain.createModule(navigation: navigation)
        navigation.pushViewController(vc, animated: true)
        return true
    }

}

