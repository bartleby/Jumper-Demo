// Copyright (c) 2022 iDevs.io. All rights reserved.

import Jumper
import UIKit
import Container

final class MainCoordinator: NavigationCoordinable {

    // MARK: - Properties
    var navigation: Navigation<MainCoordinator> = .init(initial: \.main)
    
    // MARK: - Dependencies
    @Dependency(.screenBuilders) var mainScreenBuilder: MainScreenBuilder
    
    // MARK: - Routing Properties
    @Route var main = mainScreen
    @Route var authorization = authorizationScreen
    @Route var todo = todoScreen
    
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

extension MainCoordinator {
    func authorizationScreen(
        completion: @escaping AuthorizationCoordinator.LoginCompletion
    ) -> AuthorizationCoordinator {
        let coordinator = AuthorizationCoordinator(completion: completion)
        coordinator
            .view()
            .modalPresentationStyle(.fullScreen)
        return coordinator
    }
    
    func mainScreen() -> ScreenView {
        mainScreenBuilder
            .build()
            .configure {
                $0.coordinator = self
            }
            .view()
            .backgroundColor(.white)
    }
    
    func todoScreen(id: String) -> ScreenView {
        TodoScreen(id: id)
            .backgroundColor(.brown)
    }
}


