// Copyright (c) 2022 iDevs.io. All rights reserved.

import UIKit

class OnboardingViewController: UIViewController {
    
    // MARK: - Properties
    var viewModel: OnboardingViewModel
    
    // MARK: - Lazy Properties
    private lazy var button: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Complete onboarding", for: .normal)
        button.addTarget(self, action: #selector(onTapButton), for: .touchUpInside)
        return button
    }()
    
    // MARK: - Init/Deinit
    init(viewModel: OnboardingViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Public methods
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
        view.addSubview(button) {
            $0.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            $0.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        }
    }
    
    @objc func onTapButton() {
        viewModel.onTapButton()
    }
}
