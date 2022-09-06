// Copyright (c) 2022 iDevs.io. All rights reserved.

import UIKit
import Container
import Jumper

final class TabBarCoordinator: TabCoordinable {
    
    // MARK: - Properties
    var navigation: TabNavigation<TabBarCoordinator> = .init {
        \TabBarCoordinator.main
        \TabBarCoordinator.settings
    }
        
    // MARK: - Routing Properties
    @Route(tabItem: mainTab) var main = mainScreen
    @Route(tabItem: settingsTab) var settings = settingsScreen
    
    // MARK: - Public methods
    func configure(controller: UITabBarController) {
        if #available(iOS 15.0, *) {
            let appearance = UITabBarAppearance()
            appearance.configureWithOpaqueBackground()
            controller.tabBar.scrollEdgeAppearance = appearance
            controller.tabBar.standardAppearance = appearance
        }
    }
}

extension TabBarCoordinator {
    func mainScreen() -> MainCoordinator {
        MainCoordinator()
    }
    
    func settingsScreen() -> SettingsCoordinator {
        SettingsCoordinator()
    }
}

extension TabBarCoordinator {
    func mainTab() -> UITabBarItem {
        UITabBarItem()
            .image(UIImage(systemName: "circle.fill"))
            .title("Main")
    }
    
    func settingsTab() -> UITabBarItem {
        UITabBarItem()
            .image(UIImage(systemName: "square.fill"))
            .title("Settings")
    }
}
