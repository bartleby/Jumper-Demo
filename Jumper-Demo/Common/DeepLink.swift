// Copyright (c) 2022 iDevs.io. All rights reserved.

import Foundation

enum DeepLinkError: LocalizedError {
    case generalError
    
    var errorDescription: String? {
        switch self {
        case .generalError:
            return "Couldn't create deep link"
        }
    }
}

enum DeepLink {
    case todo(id: String)
    case settings
    case home
    
    init(url: URL) throws {
        guard url.scheme == Constants.scheme,
              url.host == Constants.host,
              let components = URLComponents(url: url, resolvingAgainstBaseURL: false)
        else { throw DeepLinkError.generalError }
        
        let pathElements = components.path.split(separator: "/").map { String($0) }
        
        guard let path = pathElements[safe: 0] else {
            throw DeepLinkError.generalError
        }
        
        if path == Constants.todoPath, let id = pathElements[safe: 1] {
            self = .todo(id: id)
        } else if path == Constants.settingsPath {
            self = .settings
        } else if path == Constants.homePath {
            self = .home
        } else {
            throw DeepLinkError.generalError
        }
    }
}

extension DeepLink {
    enum Constants {
        static let scheme = "jpumper"
        static let host = "io.idevs"
        static let todoPath = "todo"
        static let settingsPath = "settings"
        static let homePath = "home"
    }
}

