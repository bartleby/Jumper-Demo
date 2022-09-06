// Copyright (c) 2022 iDevs.io. All rights reserved.

import Foundation
import Container
import Jumper

final class OnboardingCoordinator: NavigationCoordinable {
    
    // MARK: - Properties
    var navigation: Navigation<OnboardingCoordinator> = .init(initial: \.start)
    var completion: (() -> Void)?
    
    // MARK: - Dependencies
    @Dependency(.screenBuilders) var onboardingScreenBuilder: OnboardingScreenBuilder
    
    // MARK: - Routing Properties
    @Route var start = onboardingScreen
    
    // MARK: - Init/Deinit
    init(completion: @escaping () -> Void) {
        self.completion = completion
    }    
}

extension OnboardingCoordinator {
    func onboardingScreen() -> ScreenView {
        onboardingScreenBuilder
            .build()
            .configure {
                $0.completion = completion
            }
            .view()
    }
}
