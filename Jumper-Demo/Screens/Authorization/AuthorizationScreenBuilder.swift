// Copyright (c) 2022 iDevs.io. All rights reserved.

import UIKit
import Container

typealias AuthorizationScreen = Screen<AuthorizationViewModel>

struct AuthorizationScreenBuilder {
    func build() -> AuthorizationScreen {
        let viewModel = AuthorizationViewModel()
        let view = AuthorizationViewController(viewModel: viewModel)
        return Screen(screenView: view, viewModel: viewModel)
    }
}
