// Copyright (c) 2022 iDevs.io. All rights reserved.

import UIKit

extension SettingsViewController {
    func makePresentCoordinatorButton() -> UIButton {
        let button = UIButton(configuration: .bordered())
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Present Coordinator", for: .normal)
        button.addTarget(self, action: #selector(didTapPresentCoordinatorButton), for: .touchUpInside)
        return button
    }
    
    func makePresentCoordinatorFullScreenButton() -> UIButton {
        let button = UIButton(configuration: .bordered())
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Present Coordinator Fullscreen", for: .normal)
        button.addTarget(self, action: #selector(didTapPresentCoordinatorFullScreenButton), for: .touchUpInside)
        return button
    }
    
    func makePresentScreenButton() -> UIButton {
        let button = UIButton(configuration: .bordered())
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Present View", for: .normal)
        button.addTarget(self, action: #selector(didTapPresentScreenButton), for: .touchUpInside)
        return button
    }
    
    func makePushGreenScreenButton() -> UIButton {
        let button = UIButton(configuration: .bordered())
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Push Green View", for: .normal)
        button.addTarget(self, action: #selector(didTapPushGreenScreenButton), for: .touchUpInside)
        return button
    }
    
    func makePushYellowScreenButton() -> UIButton {
        let button = UIButton(configuration: .bordered())
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Push Yellow", for: .normal)
        button.addTarget(self, action: #selector(didTapPushYellowScreenButton), for: .touchUpInside)
        return button
    }
    
    func makeShowAlertButton() -> UIButton {
        let button = UIButton(configuration: .bordered())
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Show alert", for: .normal)
        button.addTarget(self, action: #selector(didTapShowAlertButton), for: .touchUpInside)
        return button
    }
    
    func makePopButton() -> UIButton {
        let button = UIButton(configuration: .bordered())
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Pop View", for: .normal)
        button.addTarget(self, action: #selector(didTapPopButton), for: .touchUpInside)
        return button
    }
    
    func makePopToRootButton() -> UIButton {
        let button = UIButton(configuration: .bordered())
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Pop to root", for: .normal)
        button.addTarget(self, action: #selector(didTapPopToRootButton), for: .touchUpInside)
        return button
    }
    
    func makePopToGreenScreenButton() -> UIButton {
        let button = UIButton(configuration: .bordered())
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Pop to green view", for: .normal)
        button.addTarget(self, action: #selector(didTapPopToGreenScreenButton), for: .touchUpInside)
        return button
    }
    
    func makePopToYellowScreenButton() -> UIButton {
        let button = UIButton(configuration: .bordered())
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Pop to yellow view", for: .normal)
        button.addTarget(self, action: #selector(didTapPopToYellowScreenButton), for: .touchUpInside)
        return button
    }
    
    func makeDismissButton() -> UIButton {
        let button = UIButton(configuration: .bordered())
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Dismiss", for: .normal)
        button.addTarget(self, action: #selector(didTapDismissButton), for: .touchUpInside)
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
