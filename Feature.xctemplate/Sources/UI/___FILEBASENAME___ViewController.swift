import UIKit

final class ___VARIABLE_productName___ViewController: UIViewController {

    // MARK: - Mobius

    var loopController: ___VARIABLE_productName___Controller!

    private var viewConnectable: ___VARIABLE_productName___ViewConnectable?

    // MARK: - View

    // swiftlint:disable:next identifier_name
    var _view: ___VARIABLE_productName___View {
        guard let someView = view as? ___VARIABLE_productName___View else {
            fatalError()
        }
        return someView
    }

    private let theme = ___VARIABLE_productName___Theme()

    // MARK: - Life Cycle

    override func loadView() {
        self.view = ___VARIABLE_productName___View()
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        _view.apply(theme: theme)

        // Pass in _view 
        viewConnectable = ___VARIABLE_productName___ViewConnectable()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        if !loopController.running, let viewConnectable = viewConnectable {
            loopController.connectView(viewConnectable)
            loopController.start()
        }
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)

        if loopController.running {
            loopController.stop()
            loopController.disconnectView()
        }
    }
}
