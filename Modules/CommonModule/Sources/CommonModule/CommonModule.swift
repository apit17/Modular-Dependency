import UIKit
import Swinject

public protocol Routing {
    func routeToHome(baseViewController: UIViewController?, user: String)
}

public protocol HomeFactory {
    func makeHomeViewController(user: String) -> UIViewController
}

public protocol LoginFactory {
    func makeLoginViewController() -> UIViewController
}

public class InjectionContainer {
    public static var shared = Container()
}
