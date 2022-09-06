// Copyright (c) 2022 iDevs.io. All rights reserved.

import UIKit

class MainViewController: UIViewController {
    
    // MARK: - Properties
    var viewModel: MainViewModel
    
    // MARK: - Lazy Properties
    private lazy var label: UILabel = makeLabel()
    private lazy var button: UIButton = makeButton()
    private lazy var stackView: UIStackView = makeStackView()
    
    // MARK: - Init/Deinit
    init(viewModel: MainViewModel) {
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
        
        stackView.addArrangedSubview(label)
        stackView.addArrangedSubview(button)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        label.text = viewModel.username
    }
    
    @objc func didTapLogoutButton() {
        viewModel.onTapLogoutButton()
    }
}
