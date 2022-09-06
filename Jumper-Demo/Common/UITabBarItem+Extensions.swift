// Copyright (c) 2022 iDevs.io. All rights reserved.

import UIKit

extension UITabBarItem {
    func image(_ image: UIImage?) -> Self {
        self.image = image
        return self
    }
    
    func title(_ title: String) -> Self {
        self.title = title
        return self
    }
}
