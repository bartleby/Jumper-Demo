// Copyright (c) 2022 iDevs.io. All rights reserved.

import Foundation

final class MainViewModel {
    
    // MARK: - Properties
    weak var coordinator: MainCoordinator?
    var config: AppConfigServiceType
    var title: String = "Main"
    
    // MARK: - Computed Properties
    var username: String {
        config.obtain(for: .authorizationUserName)
    }
    
    // MARK: - Init/Deinit
    init(config: AppConfigServiceType) {
        self.config = config
    }
    
    // MARK: - Public methods
    func onTapLogoutButton() {
        coordinator?.present(\.authorization) { [weak self] username in
            self?.config.set(value: username, for: .authorizationUserName)
        }
    }
}
