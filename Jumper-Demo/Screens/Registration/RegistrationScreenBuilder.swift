// Copyright (c) 2022 iDevs.io. All rights reserved.

import UIKit
import Container

typealias RegistrationScreen = Screen<RegistrationViewModel>

struct RegistrationScreenBuilder {
    func build() -> RegistrationScreen {        
        let viewModel = RegistrationViewModel()
        let view = RegistrationViewController(viewModel: viewModel)
        return Screen(screenView: view, viewModel: viewModel)
    }
}
