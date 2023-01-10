//
//  AppDelegate.swift
//  YouTube API App
//
//  Created by Irisandromeda on 06.01.2023.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow()
        
        let viewController = ModulesBuilder.createMainModule()
        
        window?.rootViewController = viewController
        window?.makeKeyAndVisible()
        
        window?.backgroundColor = .purple
        
        return true
    }

}

