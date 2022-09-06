// Copyright (c) 2022 iDevs.io. All rights reserved.

import UIKit
import Container

typealias OnboardingScreen = Screen<OnboardingViewModel>

struct OnboardingScreenBuilder {
    func build() -> OnboardingScreen {
        let viewModel = OnboardingViewModel()
        let view = OnboardingViewController(viewModel: viewModel)
        return Screen(screenView: view, viewModel: viewModel)
    }
}
