import UIKit
import CommonModule

public class HomeModuleFactory: HomeFactory {
    public init() {}
    
    public func makeHomeViewController(user: String, callback: @escaping (String) -> Void) -> UIViewController {
        return HomeViewController(user: user, callback: callback)
    }
}

public class HomeViewController: UIViewController {
    
    let user: String
    let callback: (String) -> Void
    
    init(user: String, callback: @escaping (String) -> Void) {
        self.user = user
        self.callback = callback
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = user
        
        view.addSubview(label)
        
        NSLayoutConstraint.activate([
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
    public override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        callback("back from home")
    }
}
