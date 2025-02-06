//
//  SceneDelegate.swift
//  appAboutPolina
//
//  Created by Polina Stelmakh on 06.02.2025.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }

        let window = UIWindow(windowScene: windowScene)
        let rootVC = ViewController()
        let navigationController = UINavigationController(rootViewController: rootVC)
        
        window.rootViewController = navigationController
        self.window = window
        window.makeKeyAndVisible()
    }
}


