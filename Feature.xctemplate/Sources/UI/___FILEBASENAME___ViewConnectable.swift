import UIKit
import MobiusCore

class ___VARIABLE_productName___ViewConnectable: Connectable {
    typealias EventConsumer = (___VARIABLE_productName___Event) -> Void

    private var consumer: EventConsumer?
    // private var tableViewBinder: TableViewBinder?

    // MARK: - Initialization

    init() {
        // Pass in ___VARIABLE_productName___View
    }

    // MARK: - Connectable

    func connect(_ consumer: @escaping EventConsumer) -> Connection<___VARIABLE_productName___Model> {
        self.consumer = consumer

        // tableViewBinder = TableViewBinder(tableView: ___VARIABLE_productName___View.tableView)
        // tableViewBinder?.connect(output: consumer)

        return Connection(acceptClosure: accept, disposeClosure: dispose)
    }

    private func accept(model: ___VARIABLE_productName___Model) {
        
    }

    private func dispose() {
        // tableViewBinder?.disconnect()
        // tableViewBinder = nil

        consumer = nil
    }
}
