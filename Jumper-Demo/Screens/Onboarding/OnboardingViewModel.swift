// Copyright (c) 2022 iDevs.io. All rights reserved.

import Foundation

class OnboardingViewModel {
    
    // MARK: - Properties
    weak var coordinator: OnboardingCoordinator?
    var completion: (() -> Void)?
    
    func onTapButton() {
        completion?()
    }
}
