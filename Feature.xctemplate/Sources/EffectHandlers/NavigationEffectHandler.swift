import Assertions
import MobiusCore
import RouterServiceInterface
import UIKit

class NavigationEffectHandler: EffectHandler {
    typealias Callback = EffectCallback<___VARIABLE_productName___Event>

    let routerService: RouterServiceProtocol

    // MARK: - Initialization

    init(routerService: RouterServiceProtocol) {
        self.routerService = routerService
    }

    // MARK: - Effect Handler

    func handle(_ destination: ___VARIABLE_productName___Destination, _ callback: Callback) -> Disposable {
        // switch destination {
        // case .example:
        //     routerService
        //         .navigate(
        //             toRoute: SomeRoute(),
        //             fromView: presentingViewController,
        //             presentationStyle: Modal(),
        //             animated: true
        //         )
        // }
        return self
    }
}

extension NavigationEffectHandler: Disposable {

    func dispose() {
        // no-op
    }
}
