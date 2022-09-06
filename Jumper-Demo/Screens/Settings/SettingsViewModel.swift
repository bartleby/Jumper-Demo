// Copyright (c) 2022 iDevs.io. All rights reserved.

import Foundation

class SettingsViewModel {
    
    // MARK: - Properties
    var title: String = "Settings"
    weak var coordinator: SettingsCoordinator?
        
    // MARK: - Public methods
    func onTapPresentCoordinatorButton() {
        coordinator?.present(\.settingsCoordinator, input: .automatic)
    }
    
    func onTapPresentCoordinatorFullScreenButton() {
        coordinator?.present(\.settingsCoordinator, input: .fullScreen)
    }
    
    func onTapPresentScreenButton() {
        coordinator?.present(\.screen)
    }
    
    func onTapPushGreenScreenButton() {
        coordinator?.push(\.green)
    }
    
    func onTapPushYellowScreenButton() {
        coordinator?.push(\.yellow)
    }
    
    func onTapShowAlertButton() {
        coordinator?.presentAlert(title: "Hello", message: "Simple alert with button")
    }
    
    func onTapPopButton() {
        coordinator?.pop()
    }
    
    func onTapPopToRootButton() {
        coordinator?.popToRoot()
    }
    
    func onTapPopToGreenScreenButton() {
        coordinator?.pop(to: \.green)
    }
    
    func onTapPopToYellowScreenButton() {
        coordinator?.pop(to: \.yellow)
    }
    
    func onTapDismissButton() {
        coordinator?.dismiss()
    }
}
