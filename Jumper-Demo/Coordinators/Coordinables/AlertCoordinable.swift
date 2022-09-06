// Copyright (c) 2022 iDevs.io. All rights reserved.

import UIKit
import Jumper

public protocol AlertCoordinable: ScreenViewPresentable {
    func presentAlert(title: String, message: String)
}

extension AlertCoordinable {
    func presentAlert(title: String, message: String) {
        let controller = view()
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let completeAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alertController.addAction(completeAction)
        controller.present(alertController, animated: true, completion: nil)
    }
}


