//
//  AppDelegate.swift
//  ToastView
//
//  Created by Elattar on 10/11/20.
//  Copyright © 2020 Shadi Elattar. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        KeyboardStateManager.shared.start()
        return true
    }



}

