// Copyright (c) 2022 iDevs.io. All rights reserved.

import Foundation
import Combine

class LaunchCoordinator {
    
    // MARK: - Properties
    let launchStack: LaunchStack = LaunchStack()
    
    // MARK: - Init/Deinit
    init(configureStack: (LaunchStack) -> Void) {
        configureStack(launchStack)
    }
    
    // MARK: - Public methods
    func next() {
        launchStack.nextRoute()
    }
}

final class LaunchStack {
    
    // MARK: - Nested Types
    struct StateStackItem {
        let isActive: () -> Bool
        let route: () -> Void
    }
    
    // MARK: - Properties
    private var stateStack: [StateStackItem] = []
    
    // MARK: - Computed Properties
    private var isCompleted: Bool {
        let currentIndex = stateStack.firstIndex(where: { $0.isActive() })
        return currentIndex == stateStack.count - 1
    }
    
    // MARK: - Public methods
    func when(_ isActive: @escaping @autoclosure () -> Bool, route: @escaping () -> Void) {
        stateStack.append(StateStackItem(isActive: isActive, route: route))
    }
    
    func nextRoute() {
        stateStack.first(where: { $0.isActive() })?.route()
    }
}
