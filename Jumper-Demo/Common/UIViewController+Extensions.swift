// Copyright (c) 2022 iDevs.io. All rights reserved.

import UIKit

extension UIViewController {
    @discardableResult
    func configureView(_ configure: (Self) -> Void) -> Self {
        configure(self)
        return self
    }
    
    @discardableResult
    func hidesBottomBarWhenPushed(_ value: Bool) -> Self {
        self.hidesBottomBarWhenPushed = value
        return self
    }
    
    @discardableResult
    func modalTransitionStyle(_ style: UIModalTransitionStyle) -> Self {
        self.modalTransitionStyle = style
        return self
    }
    
    @discardableResult
    func modalPresentationStyle(_ style: UIModalPresentationStyle) -> Self {
        self.modalPresentationStyle = style
        return self
    }
    
    @discardableResult
    func backgroundColor(_ color: UIColor) -> Self {
        self.view.backgroundColor = color
        return self
    }
}
