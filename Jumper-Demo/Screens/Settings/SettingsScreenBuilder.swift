// Copyright (c) 2022 iDevs.io. All rights reserved.

import UIKit
import Container

typealias SettingsScreen = Screen<SettingsViewModel>

struct SettingsScreenBuilder {
    
    // MARK: - Public methods
    func build() -> SettingsScreen {
        let viewModel = SettingsViewModel()
        let view = SettingsViewController(viewModel: viewModel)
        return Screen(screenView: view, viewModel: viewModel)
    }
}
