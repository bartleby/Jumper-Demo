// Copyright (c) 2022 iDevs.io. All rights reserved.

import UIKit

class AuthorizationViewController: UIViewController {
    
    // MARK: - Properties
    var viewModel: AuthorizationViewModel
    
    // MARK: - Lazy Properties
    private lazy var textField: UITextField = makeTextField()
    private lazy var loginButton: UIButton = makeLoginButton()
    private lazy var registrationButton: UIButton = makeRegistrationButton()
    private lazy var stackView: UIStackView = makeStackView()
    
    // MARK: - Init/Deinit
    init(viewModel: AuthorizationViewModel) {
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
        
        stackView.addArrangedSubview(textField) {
            $0.widthAnchor.constraint(equalToConstant: 300)
            $0.heightAnchor.constraint(equalToConstant: 40)
            $0.centerXAnchor.constraint(equalTo: stackView.centerXAnchor)
            
        }
        stackView.addArrangedSubview(loginButton)
        stackView.addArrangedSubview(registrationButton)
    }
    
    @objc func didTapLoginButton() {
        viewModel.onTapLogin(textField.text ?? "")
    }
    
    @objc func didTapRegistrationButton() {
        viewModel.onTapRegistration()
    }
}

// MARK: - UITextFieldDelegate
extension AuthorizationViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
