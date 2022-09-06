// Copyright (c) 2022 iDevs.io. All rights reserved.

import Foundation
import Container
import UIKit
import Jumper

final class AuthorizationCoordinator: NavigationCoordinable, AlertCoordinable {

    // MARK: - Typealias
    typealias LoginCompletion = (String) -> Void
    
    // MARK: - Dependencies
    @Dependency(.screenBuilders) var authorizationScreenBuilder: AuthorizationScreenBuilder
    @Dependency(.screenBuilders) var registrationScreenBuilder: RegistrationScreenBuilder
    
    // MARK: - Properties
    var navigation: Navigation<AuthorizationCoordinator> = .init(initial: \.authorization)
    var completion: LoginCompletion
    
    // MARK: - Routing Properties
    @Route var authorization = authorizationScreen
    @Route var registration = registrationScreen
    
    // MARK: - Init/Deinit
    init(completion: @escaping LoginCompletion) {
        self.completion = completion
    }
}

extension AuthorizationCoordinator {
    func authorizationScreen() -> ScreenView {
        authorizationScreenBuilder
            .build()
            .configure {
                $0.title = "Authorization"
                $0.coordinator = self
            }
            .view()
            .backgroundColor(.white)
    }
    
    func registrationScreen() -> ScreenView {
        registrationScreenBuilder
            .build()
            .configure {
                $0.coordinator = self
            }
            .view()
            .backgroundColor(.white)
    }
}
