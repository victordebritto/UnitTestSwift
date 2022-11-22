//
//  AccountViewModel.swift
//  UnitTestSwift
//
//  Created by Victor Britto e Barros on 17/11/22.
//

import UIKit

protocol AccountViewModelProtocol {
    func loginButtonTap()
    func shouldRequestLocation(showAlert: () -> (),
                               askUserPermission: () -> (),
                               completion: () -> ())
    var instructionText: String { get }

}

class AccountViewModel {
    
    private let shouldUseLocation: Bool
    private let model: AccountModel
    
    init(shouldUseLocation: Bool, model: AccountModel) {
        self.shouldUseLocation = shouldUseLocation
        self.model = model
    }
    
}

extension AccountViewModel: AccountViewModelProtocol {
    var instructionText: String {
        if shouldUseLocation {
            return model.instruction + " com localização"
        }
        return model.instruction
    }
    
    
    func loginButtonTap() {
        print("Login Realizado com Sucesso")
    }
    
    func shouldRequestLocation(showAlert: () -> (),
                               askUserPermission: () -> (),
                               completion: () -> ()) {
        
        if shouldUseLocation {
            askUserPermission()
            completion()
            return
        }
        showAlert()
        completion()
    }
}
