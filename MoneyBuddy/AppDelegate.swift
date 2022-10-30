//
//  AppDelegate.swift
//  MoneyBuddy
//
//  Created by  User on 27.05.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        let mainViewController = WelcomeViewController()
        let mainNavigationController = UINavigationController(rootViewController: mainViewController)
        self.window!.rootViewController = mainNavigationController
        self.window!.makeKeyAndVisible()
        return true
    }
}

