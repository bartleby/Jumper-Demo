// Copyright (c) 2022 iDevs.io. All rights reserved.

import UIKit
import Jumper

public struct Screen<ViewModel> {
    public var screenView: ScreenView
    public var viewModel: ViewModel
    
    public func configure(_ configure: (ViewModel) -> Void) -> Screen {
        configure(viewModel)
        return self
    }
}

extension Screen: ScreenViewPresentable {
    public func view() -> ScreenView {
        return screenView
    }
}
