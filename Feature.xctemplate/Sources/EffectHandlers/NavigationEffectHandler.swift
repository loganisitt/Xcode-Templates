import Assertions
import MobiusCore
import RouterServiceInterface
import UIKit

enum Navigation {
    case example
}

class NavigationEffectHandler: EffectHandler {
    typealias Callback = EffectCallback<___VARIABLE_productName___Event>

    weak var presentingViewController: UIViewController?
    let routerService: RouterServiceProtocol

    // MARK: - Initialization

    init(presentingViewController: UIViewController, routerService: RouterServiceProtocol) {
        self.presentingViewController = presentingViewController
        self.routerService = routerService
    }

    // MARK: - Effect Handler

    func handle(_ navigation: Navigation, _ callback: Callback) -> Disposable {
        guard let presentingViewController = presentingViewController else {
            crash(message: "presentingViewController is nil")
        }

        // switch navigation {
        // case .example:
        //     routerService
        //         .navigate(
        //             toRoute: SomeRoute(),
        //             fromView: presentingViewController,
        //             presentationStyle: Modal(),
        //             animated: true
        //         )
        // }

        return AnonymousDisposable {

        }
    }
}
