// Copyright (c) 2022 iDevs.io. All rights reserved.

import Foundation

extension Array {
    subscript(safe index: Int) -> Element? {
        if index >= self.count || index < 0 {
            return nil
        }
        return self[index]
    }
}
