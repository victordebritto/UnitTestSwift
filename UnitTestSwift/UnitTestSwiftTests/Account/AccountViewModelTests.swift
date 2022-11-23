//
//  AccountViewModelTests.swift
//  UnitTestSwiftTests
//
//  Created by Victor Britto e Barros on 18/11/22.
//

import Quick
import Nimble
@testable import UnitTestSwift

class AccountViewModelTests: QuickSpec {
    
    var sut: AccountViewModel?
    
    override func spec() {
        describe("AccountViewModel") {
            context("ShouldRequestLocation") {
                var showAlert:Bool!
                var askUserPermission:Bool!
                var completion:Bool!
                
                beforeEach {
                    showAlert = false
                    askUserPermission = false
                    completion = false
                }
                
                it("Use Location true") {
                    self.sut = AccountViewModel(shouldUseLocation: true,
                                                model: AccountModel(instruction: ""))
                    
                    showAlert = false
                    askUserPermission = false
                    completion = false
                    self.sut?.shouldRequestLocation(showAlert: {
                        showAlert = true
                    }, askUserPermission: {
                        askUserPermission = true
                    }, completion: {
                        completion = true
                    })
                    
                    expect(showAlert).to(equal(false))
                    expect(askUserPermission).to(equal(true))
                    expect(completion).to(equal(true))
                }
                it("Use Location false") {
                    self.sut = AccountViewModel(shouldUseLocation: false,
                                                model: AccountModel(instruction: ""))
                    
                    showAlert = false
                    askUserPermission = false
                    completion = false
                    self.sut?.shouldRequestLocation(showAlert: {
                        showAlert = true
                    }, askUserPermission: {
                        askUserPermission = true
                    }, completion: {
                        completion = true
                    })
                    
                    expect(showAlert).to(equal(true))
                    expect(askUserPermission).to(equal(false))
                    expect(completion).to(equal(true))
                }
                it("LoginButtonTap") {
                    // Somente verifica se função retorna um void (Nao testa nada da função)
                    self.sut = AccountViewModel(shouldUseLocation: false,
                                                model: AccountModel(instruction: ""))
                    
                    expect(self.sut?.loginButtonTap()).to(beVoid())
                    
                }
            }
            
            context("AccountViewModel Protocol") {
                it("Verify Protocol") {
                    self.sut = AccountViewModel(shouldUseLocation: true,
                                                model: AccountModel(instruction: ""))
                    expect(self.sut).to(beAKindOf(AccountViewModelProtocol.self))
                }
            }
            
            context("Instruction Text") {
                it("Verify using location") {
                    self.sut = AccountViewModel(shouldUseLocation: true,
                                                model: AccountModel(instruction: "Teste"))
                    expect(self.sut?.instructionText).to(equal("Teste com localização"))
                }
                it("Verify not using location") {
                    self.sut = AccountViewModel(shouldUseLocation: false,
                                                model: AccountModel(instruction: "Teste"))
                    expect(self.sut?.instructionText).to(equal("Teste")) 
                }
            }
        }
    }
    
}
