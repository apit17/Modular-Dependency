//
//  Router.swift
//  Modular-Dependency
//
//  Created by Kevin Abram on 15/05/23.
//

import UIKit
import CommonModule

class Router: Routing {
    
    var factory = InjectionContainer.shared.resolve(HomeFactory.self)
    
    func routeToHome(baseViewController: UIViewController?, user: String, callback: @escaping (String) -> Void) {
        guard let homeVC = factory?.makeHomeViewController(user: user, callback: callback) else { return }
        baseViewController?.navigationController?.pushViewController(homeVC, animated: true)
    }
}
