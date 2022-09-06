// Copyright (c) 2022 iDevs.io. All rights reserved.

import Foundation

enum ConfigKey: String {
    case authorizationUserName = "authorizationUserName"
    case shouldShowOnboarding = "shouldShowOnboarding"
    
    var value: String {
        return self.rawValue
    }
    
    static var defaultValues: [String: Any] = [
        ConfigKey.authorizationUserName.value: "",
        ConfigKey.shouldShowOnboarding.value: true
    ]
}

protocol AppConfigServiceType {
    func obtain<T>(for key: ConfigKey) -> T
    func set<T>(value: T, for key: ConfigKey)
    
    func registerDefaults()
}
