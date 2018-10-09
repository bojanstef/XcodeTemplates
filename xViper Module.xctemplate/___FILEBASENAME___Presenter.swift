//___FILEHEADER___

import Foundation

protocol ___VARIABLE_productName:identifier___Presentable {}

final class ___FILEBASENAME___ {
    fileprivate weak var moduleDelegate: ___VARIABLE_productName:identifier___ModuleDelegate?
    fileprivate let interactor: ___VARIABLE_productName:identifier___Interactable

    init(moduleDelegate: ___VARIABLE_productName:identifier___ModuleDelegate?, interactor: ___VARIABLE_productName:identifier___Interactable) {
        self.moduleDelegate = moduleDelegate
        self.interactor = interactor
    }
}

extension ___FILEBASENAME___: ___VARIABLE_productName:identifier___Presentable {}
