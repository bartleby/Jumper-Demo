// Copyright (c) 2022 iDevs.io. All rights reserved.

import UIKit

extension UIView {
    func addSubview<T>(_ view: T, @ConstraintBuilder layout: (T) -> [NSLayoutConstraint]) where T: UIView {
        self.addSubview(view)
        NSLayoutConstraint.activate(layout(view))
    }
}

extension UIStackView {
    func addArrangedSubview<T>(_ view: T, @ConstraintBuilder layout: (T) -> [NSLayoutConstraint]) where T: UIView {
        self.addArrangedSubview(view)
        NSLayoutConstraint.activate(layout(view))
    }
}

@resultBuilder
struct ConstraintBuilder {
    static func buildBlock(_ components: NSLayoutConstraint...) -> [NSLayoutConstraint] {
        components
    }
}


