// Copyright (c) 2022 iDevs.io. All rights reserved.

import UIKit

class SettingsViewController: UIViewController {
    
    // MARK: - Properties
    var viewModel: SettingsViewModel
    
    // MARK: - Lazy Properties
    private lazy var presentCoordinatorButton: UIButton = makePresentCoordinatorButton()
    private lazy var presentCoordinatorFullScreenButton: UIButton = makePresentCoordinatorFullScreenButton()
    private lazy var presentScreenButton: UIButton = makePresentScreenButton()
    private lazy var pushGreenScreenButton: UIButton = makePushGreenScreenButton()
    private lazy var pushYellowScreenButton: UIButton = makePushYellowScreenButton()
    private lazy var showAlertButton: UIButton = makeShowAlertButton()
    private lazy var popButton: UIButton = makePopButton()
    private lazy var popToRootButton: UIButton = makePopToRootButton()
    private lazy var popToGreenScreenButton: UIButton = makePopToGreenScreenButton()
    private lazy var popToYellowScreenButton: UIButton = makePopToYellowScreenButton()
    private lazy var dismissButton: UIButton = makeDismissButton()
    private lazy var stackView: UIStackView = makeStackView()
    
    // MARK: - Init/Deinit
    init(viewModel: SettingsViewModel) {
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
        
        view.addSubview(stackView) {
            $0.leadingAnchor.constraint(equalTo: view.leadingAnchor)
            $0.trailingAnchor.constraint(equalTo: view.trailingAnchor)
            $0.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        }
        
        stackView.addArrangedSubview(presentCoordinatorButton)
        stackView.addArrangedSubview(presentCoordinatorFullScreenButton)
        stackView.addArrangedSubview(presentScreenButton)
        stackView.addArrangedSubview(pushGreenScreenButton)
        stackView.addArrangedSubview(pushYellowScreenButton)
        stackView.addArrangedSubview(showAlertButton)
        stackView.addArrangedSubview(popButton)
        stackView.addArrangedSubview(popToRootButton)
        stackView.addArrangedSubview(popToGreenScreenButton)
        stackView.addArrangedSubview(popToYellowScreenButton)
        stackView.addArrangedSubview(dismissButton)
    }
}

extension SettingsViewController {
    @objc func didTapPresentCoordinatorButton() {
        viewModel.onTapPresentCoordinatorButton()
    }
    
    @objc func didTapPresentCoordinatorFullScreenButton() {
        viewModel.onTapPresentCoordinatorFullScreenButton()
    }
    
    @objc func didTapPresentScreenButton() {
        viewModel.onTapPresentScreenButton()
    }
    
    @objc func didTapPushGreenScreenButton() {
        viewModel.onTapPushGreenScreenButton()
    }
    
    @objc func didTapPushYellowScreenButton() {
        viewModel.onTapPushYellowScreenButton()
    }
    
    @objc func didTapShowAlertButton() {
        viewModel.onTapShowAlertButton()
    }
    
    @objc func didTapPopButton() {
        viewModel.onTapPopButton()
    }
    
    @objc func didTapPopToRootButton() {
        viewModel.onTapPopToRootButton()
    }
    
    @objc func didTapPopToGreenScreenButton() {
        viewModel.onTapPopToGreenScreenButton()
    }
    
    @objc func didTapPopToYellowScreenButton() {
        viewModel.onTapPopToYellowScreenButton()
    }
    
    @objc func didTapDismissButton() {
        viewModel.onTapDismissButton()
    }
}
