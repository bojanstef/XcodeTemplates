//___FILEHEADER___

import UIKit

protocol ___VARIABLE_productName:identifier___ModuleDelegate: AnyObject {}

final class ___FILEBASENAME___ {
    fileprivate weak var moduleDelegate: ___VARIABLE_productName:identifier___ModuleDelegate?

    init(moduleDelegate: ___VARIABLE_productName:identifier___ModuleDelegate?) {
        self.moduleDelegate = moduleDelegate
    }
}

extension ___FILEBASENAME___ {
    var viewController: UIViewController {
        let networkAccess: ___VARIABLE_productName:identifier___Accessing = NetworkGateway()
        let interactor = ___VARIABLE_productName:identifier___Interactor(networkAccess: networkAccess)
        let presenter = ___VARIABLE_productName:identifier___Presenter(moduleDelegate: moduleDelegate, interactor: interactor)

        //return UIStoryboard.instantiateInitialViewController(___VARIABLE_productName:identifier___ViewController.self) { viewController in
        //    viewController.presenter = presenter
        //}

        #warning("If using github.com/bojanstef/SwiftExtensions/Storybaord+Extensions.swift uncomment the code above and delete the following code.")

        let storyboardName = String(describing: ___VARIABLE_productName:identifier___ViewController.self)
        let storyboard = UIStoryboard(name: storyboardName, bundle: nil)
        let viewController = storyboard.instantiateInitialViewController() as! ___VARIABLE_productName:identifier___ViewController // swiftlint:disable:this force_cast
        viewController.presenter = presenter
        return viewController
    }
}
