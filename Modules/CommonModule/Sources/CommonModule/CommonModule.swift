import UIKit
import Swinject

public protocol Routing {
    func routeToHome(baseViewController: UIViewController?, user: String, callback: @escaping (String) -> Void)
}

public protocol HomeFactory {
    func makeHomeViewController(user: String, callback: @escaping (String) -> Void) -> UIViewController
}

public protocol LoginFactory {
    func makeLoginViewController() -> UIViewController
}

public class InjectionContainer {
    public static var shared = Container()
}
