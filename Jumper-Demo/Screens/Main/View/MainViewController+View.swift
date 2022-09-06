// Copyright (c) 2022 iDevs.io. All rights reserved.

import UIKit

extension MainViewController {
    func makeLabel() -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        return label
    }
    
    func makeButton() -> UIButton {
        let button = UIButton(configuration: .bordered())
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Logout", for: .normal)
        button.addTarget(self, action: #selector(didTapLogoutButton), for: .touchUpInside)
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
