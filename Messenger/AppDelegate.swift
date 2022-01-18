//
//  AppDelegate.swift
//  Messenger
//
//  Created by Mac on 13/01/22.
//

import UIKit
import Firebase
import FBSDKCoreKit

//@main
//class AppDelegate: UIResponder, UIApplicationDelegate {
//    var window: UIWindow?
//    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
//        let navigation = UINavigationController()
//        FirebaseApp.configure()
//        window = UIWindow(frame: UIScreen.main.bounds)
//        window?.rootViewController = navigation
//        window?.makeKeyAndVisible()
//
//        if Firebase.Auth.auth().currentUser == nil{
//            let vc = LoginMain.createModule(navigation: navigation)
//                navigation.pushViewController(vc, animated: true)
//        } else {
//            let vc = ConversationsMain.createModule(navigation: navigation)
//                navigation.pushViewController(vc, animated: true)
//            }
//        return true
//    }

//}

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
       var window: UIWindow?
    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
          
                let navigation = UINavigationController()
                FirebaseApp.configure()
                window = UIWindow(frame: UIScreen.main.bounds)
                window?.rootViewController = navigation
                window?.makeKeyAndVisible()
        
        
        ApplicationDelegate.shared.application(
            application,
            didFinishLaunchingWithOptions: launchOptions
        )
        
        if Firebase.Auth.auth().currentUser == nil{
                    let vc = LoginMain.createModule(navigation: navigation)
                        navigation.pushViewController(vc, animated: true)
                } else {
                    let vc = ConversationsMain.createModule(navigation: navigation)
                        navigation.pushViewController(vc, animated: true)
                    }
        return true
    }
          
    func application(
        _ app: UIApplication,
        open url: URL,
        options: [UIApplication.OpenURLOptionsKey : Any] = [:]
    ) -> Bool {

        ApplicationDelegate.shared.application(
            app,
            open: url,
            sourceApplication: options[UIApplication.OpenURLOptionsKey.sourceApplication] as? String,
            annotation: options[UIApplication.OpenURLOptionsKey.annotation]
        )
    }
}
    
    
