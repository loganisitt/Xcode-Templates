import MobiusCore
import UIKit

class ___VARIABLE_productName___TableViewBinder: NSObject {
    typealias EventConsumer = (___VARIABLE_productName___Event) -> Void

    private var eventConsumer: EventConsumer?

    private var tableView: UITableView

    // MARK: - Initialization

    init(tableView: UITableView) {
        self.tableView = tableView

        // Register table view cells...
    }

    func connect(output: @escaping EventConsumer) {
        eventConsumer = output

        tableView.dataSource = self
        tableView.delegate = self
    }

    func disconnect() {
        eventConsumer = nil

        tableView.dataSource = nil
        tableView.delegate = nil
    }
}

extension ___VARIABLE_productName___TableViewBinder: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}

extension ___VARIABLE_productName___TableViewBinder: UITableViewDelegate {

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

    }
}
