// Copyright (c) 2022 iDevs.io. All rights reserved.

import UIKit

class RegistrationViewController: UIViewController {
    
    // MARK: - Properties
    var viewModel: RegistrationViewModel
    
    // MARK: - Lazy Properties
    private lazy var registrationButton: UIButton = makeRegistrationButton()
    
    // MARK: - Init/Deinit
    init(viewModel: RegistrationViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Public methods
    override func viewDidLoad() {
        super.viewDidLoad()
        title = viewModel.title
        
        view.addSubview(registrationButton) {
            $0.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            $0.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        }
    }
    
    @objc func didTapRegistrationButton() {
        viewModel.onTapRegistrationButton()
    }
}
