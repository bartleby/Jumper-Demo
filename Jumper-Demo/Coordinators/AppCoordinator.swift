// Copyright (c) 2022 iDevs.io. All rights reserved.

import Foundation
import Container
import UIKit
import Jumper

final class AppCoordinator: RootCoordinable {

    // MARK: - Routing Properties
    var navigation: RootNavigation<AppCoordinator> = .init(initial: \.launch)
    
    // MARK: - Dependencies
    @Dependency(.services, scope: .strong) var config: AppConfigServiceType
    
    // MARK: - Routing Properties
    @Route var launch = launchScreen
    @Route var onboarding = onboardingScreen
    @Route var auth = authorizationScreen
    @Route var home = homeScreen

    // MARK: - Computed Properties
    var shouldShowAuthorization: Bool {
        let userName: String = self.config.obtain(for: .authorizationUserName)
        return userName.isEmpty
    }
    
    // MARK: - Lazy Properties
    lazy var launchCoordinator = LaunchCoordinator { [unowned self] in
        $0.when(self.config.obtain(for: .shouldShowOnboarding)) { self.root(\.onboarding) }
        $0.when(self.shouldShowAuthorization) { self.root(\.auth) }
        $0.when(true) { self.root(\.home) }
    }
    
    // MARK: - Init/Deinit
    init() {
        config.registerDefaults()
        launchCoordinator.next()
    }
    
    // MARK: - Public methods
    func onOpenURL(_ url: URL?) {
        guard let url = url else { return }
        guard let deepLink = try? DeepLink(url: url) else { return }
        
        if let coordinator = self.hasRoot(\.home) {
            switch deepLink {
            case .todo(let id):
                coordinator
                    .focus(\.main)
                    .present(\.todo, input: id)
            case .settings:
                coordinator.focus(\.settings)
            case .home:
                coordinator.focus(\.main)
            }
        }
    }
}

extension AppCoordinator {
    func launchScreen() -> ScreenView {
        ScreenView()
            .backgroundColor(.green)
    }
    
    func onboardingScreen() -> OnboardingCoordinator {
        OnboardingCoordinator { [weak self] in
            self?.config.set(value: false, for: .shouldShowOnboarding)
            self?.launchCoordinator.next()
        }
    }
    
    func authorizationScreen() -> AuthorizationCoordinator {
        AuthorizationCoordinator { [weak self] userName in
            self?.config.set(value: userName, for: .authorizationUserName)
            self?.launchCoordinator.next()
        }
    }
    
    func homeScreen() -> TabBarCoordinator {
        TabBarCoordinator()
    }
}
