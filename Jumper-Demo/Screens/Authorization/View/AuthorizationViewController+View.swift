// Copyright (c) 2022 iDevs.io. All rights reserved.

import UIKit

extension AuthorizationViewController {
    func makeTextField() -> UITextField {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "Username"
        textField.keyboardType = .default
        textField.returnKeyType = .done
        textField.backgroundColor = .gray.withAlphaComponent(0.2)
        textField.layer.cornerRadius = 8
        textField.delegate = self
        return textField
    }
    
    func makeLoginButton() -> UIButton {
        let button = UIButton(configuration: .bordered())
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Login", for: .normal)
        button.addTarget(self, action: #selector(didTapLoginButton), for: .touchUpInside)
        return button
    }
    
    func makeRegistrationButton() -> UIButton {
        let button = UIButton(configuration: .bordered())
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Registration", for: .normal)
        button.addTarget(self, action: #selector(didTapRegistrationButton), for: .touchUpInside)
        return button
    }
    
    func makeStackView() -> UIStackView {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.spacing = 10
        return stackView
    }
}
