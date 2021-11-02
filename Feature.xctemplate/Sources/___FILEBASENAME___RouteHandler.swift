import RouterInterface
import ___VARIABLE_productName___Interface
import UIKit

public class ___VARIABLE_productName___RouteHandler: RouteHandler {

    public var routes: [Route.Type] {
        return [___VARIABLE_productName___Route.self]
    }

    public init() { }

    public func destination(
        forRoute route: Route,
        fromViewController viewController: UIViewController
    ) -> Feature.Type {
        guard route is ___VARIABLE_productName___Route else {
            preconditionFailure("unexpected route")
        }
        return ___VARIABLE_productName___Service.self
    }
}
