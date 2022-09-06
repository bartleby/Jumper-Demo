// Copyright (c) 2022 iDevs.io. All rights reserved.

import UIKit

class TodoScreen: UIViewController {
    
    // MARK: - Lazy Properties
    private lazy var label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        return label
    }()
    
    // MARK: - Init/Deinit
    init(id: String) {
        super.init(nibName: nil, bundle: nil)
        self.label.text = id
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Public methods
    override func viewDidLoad() {
        super.viewDidLoad()
        title = label.text
        
        view.addSubview(label) {
            $0.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            $0.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        }
    }
}
