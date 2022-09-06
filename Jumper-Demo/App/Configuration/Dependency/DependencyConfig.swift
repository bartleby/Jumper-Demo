// Copyright (c) 2022 iDevs.io. All rights reserved.

import Foundation
import Container
import UIKit

extension Container {
    static let screenBuilders = Container(DependenciesConfigurator.screenBuilders)
    static let services = Container(DependenciesConfigurator.services)
}

struct DependenciesConfigurator {
    static var screenBuilders: DependencyResolver {
        let container = DependencyContainer()
        
        container.apply(MainScreenBuilder())
        container.apply(SettingsScreenBuilder())
        container.apply(AuthorizationScreenBuilder())
        container.apply(OnboardingScreenBuilder())
        container.apply(RegistrationScreenBuilder())
        
        return container
    }
    
    static var services: DependencyResolver {
        let container = DependencyContainer()
        
        container.apply(AppConfigService() as AppConfigServiceType)
        
        return container
    }
}

extension DependencyLabel {
    static let test = DependencyLabel(value: "test")
}
