// Copyright (c) 2022 iDevs.io. All rights reserved.

import UIKit
import Container
import Jumper

final class SettingsCoordinator: NavigationCoordinable, AlertCoordinable {

    // MARK: - Properties
    var navigation: Navigation<SettingsCoordinator> = .init(initial: \.settings)
    
    // MARK: - Dependencies
    @Dependency(.screenBuilders) var settingsScreenBuilder: SettingsScreenBuilder
    
    // MARK: - Routing Properties
    @Route var settings = settingsScreen
    @Route var green = greenScreen
    @Route var yellow = yellowScreen
    @Route var settingsCoordinator = settingsScreenCoordinator
    @Route var screen = screenView
    
    // MARK: - Public methods
    func configure(controller: UINavigationController) {
        if #available(iOS 15.0, *) {
            let appearance = UINavigationBarAppearance()
            appearance.configureWithOpaqueBackground()
            controller.navigationBar.standardAppearance = appearance
            controller.navigationBar.scrollEdgeAppearance = appearance
        }
    }
}

extension SettingsCoordinator {
    func screenView() -> ScreenView {
        ScreenView()
            .backgroundColor(.blue)
    }
    
    func settingsScreenCoordinator(
        modalPresentationStyle: UIModalPresentationStyle
    ) -> SettingsCoordinator {
        let coordinator = SettingsCoordinator()
        coordinator
            .view()
            .modalPresentationStyle(modalPresentationStyle)
        return coordinator
    }
    
    func greenScreen() -> ScreenView {
        settingsScreenBuilder
            .build()
            .configure {
                $0.coordinator = self
            }
            .view()
            .backgroundColor(.green)
    }
    
    func yellowScreen() -> ScreenView {
        settingsScreenBuilder
            .build()
            .configure {
                $0.coordinator = self
            }
            .view()
            .backgroundColor(.yellow)
    }
    
    func settingsScreen() -> ScreenView {
        settingsScreenBuilder
            .build()
            .configure {
                $0.coordinator = self
            }
            .view()
            .backgroundColor(.white)
    }
}
