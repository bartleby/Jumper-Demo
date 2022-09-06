// Copyright (c) 2022 iDevs.io. All rights reserved.

import UIKit

extension RegistrationViewController {
    func makeRegistrationButton() -> UIButton {
        let button = UIButton(configuration: .bordered())
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Login as default user", for: .normal)
        button.addTarget(self, action: #selector(didTapRegistrationButton), for: .touchUpInside)
        return button
    }
}
