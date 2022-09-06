// Copyright (c) 2022 iDevs.io. All rights reserved.

import Foundation

final class RegistrationViewModel {
    weak var coordinator: AuthorizationCoordinator?
    var title: String = "Registration"
    
    func onTapRegistrationButton() {
        coordinator?.completion("Default User")
        coordinator?.dismiss()
    }
}
