import MobiusCore
import MobiusExtras
import UIKit

typealias ___VARIABLE_productName___Controller = MobiusController<___VARIABLE_productName___Model, ___VARIABLE_productName___Event, ___VARIABLE_productName___Effect>

enum ___VARIABLE_productName___ControllerFactory {

    static func makeController() -> ___VARIABLE_productName___Controller {

        // Event Sources

        let eventSource = ___VARIABLE_productName___EventSource()

        // Effect Handlers

        let effectRouter = EffectRouter<___VARIABLE_productName___Effect, ___VARIABLE_productName___Event>()
            .asConnectable

        let loopBuilder = Mobius
            .loop(update: ___VARIABLE_productName___Logic.update, effectHandler: effectRouter)
            .withEventSource(eventSource)

        let model = ___VARIABLE_productName___Model()

        return loopBuilder.makeController(
            from: model,
            initiate: ___VARIABLE_productName___Logic.initiate,
            qos: .userInteractive
        )
    }
}
