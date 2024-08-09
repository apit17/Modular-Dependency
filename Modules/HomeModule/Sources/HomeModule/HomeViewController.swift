import UIKit
import CommonModule

public class HomeModuleFactory: HomeFactory {
    public init() {}
    
    public func makeHomeViewController(user: String) -> UIViewController {
        return HomeViewController(user: user)
    }
}

public class HomeViewController: UIViewController {
    
    let user: String
    
    init(user: String) {
        self.user = user
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
}
