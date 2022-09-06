// Copyright (c) 2022 iDevs.io. All rights reserved.

import UIKit
import Container

// MARK: - Typealias
typealias MainScreen = Screen<MainViewModel>

struct MainScreenBuilder {
    
    // MARK: - Dependencies
    @Dependency(.services, scope: .strong) var config: AppConfigServiceType
    
    // MARK: - Public methods
    func build() -> MainScreen {
        let viewModel = MainViewModel(config: config)
        let view = MainViewController(viewModel: viewModel)
        return Screen(screenView: view, viewModel: viewModel)
    }
}
