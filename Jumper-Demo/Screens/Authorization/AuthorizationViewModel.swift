// Copyright (c) 2022 iDevs.io. All rights reserved.

import Foundation

class AuthorizationViewModel {
    
    // MARK: - Properties
    var title: String = ""
    weak var coordinator: AuthorizationCoordinator?

    // MARK: - Public methods
    func onTapLogin(_ userName: String) {
        if userName.isEmpty {
            coordinator?.presentAlert(title: "Error", message: "username should not be empty")
        } else {
            coordinator?.completion(userName)
            coordinator?.dismiss()
        }
    }
    
    func onTapRegistration() {
        coordinator?
            .push(\.registration)
    }
}
