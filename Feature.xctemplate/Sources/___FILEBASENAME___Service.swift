import RouterInterface
import ___VARIABLE_productName___Interface
import UIKit

public struct ___VARIABLE_productName___Service: Feature {

    public init() { }

    public func build(fromRoute route: Route?) -> UIViewController {
        guard let route = route as? ___VARIABLE_productName___Route else {
            fatalError()
        }

        let viewController = ___VARIABLE_productName___ViewController()
        let loopController = ___VARIABLE_productName___ControllerFactory.makeController()
        viewController.loopController = loopController
        return viewController
    }
}
