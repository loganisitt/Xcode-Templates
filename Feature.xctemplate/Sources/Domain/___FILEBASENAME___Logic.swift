import MobiusCore

enum ___VARIABLE_productName___Logic {
    typealias ___VARIABLE_productName___Next = Next<___VARIABLE_productName___Model, ___VARIABLE_productName___Effect>

    static func initiate(_ model: ___VARIABLE_productName___Model) -> First<___VARIABLE_productName___Model, ___VARIABLE_productName___Effect> {
        let effects = [___VARIABLE_productName___Effect]()
        return First(model: model, effects: effects)
    }

    static func update(model: ___VARIABLE_productName___Model, event: ___VARIABLE_productName___Event) -> ___VARIABLE_productName___Next {

        // Switch should not have default in order to ensure all events are handled
//        switch event {
//        case .<#event#>:
//            return on<#Event#>(model)
//        }

        return .noChange
    }

//    static func on<#Event#>(_ model: ___VARIABLE_productName___Model) -> ___VARIABLE_productName___Next {
//
//    }
}
