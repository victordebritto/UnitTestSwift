//
//  AccountViewControllerTests.swift
//  UnitTestSwiftTests
//
//  Created by Victor Britto e Barros on 21/11/22.
//

import Quick
import Nimble
import UIKit
@testable import UnitTestSwift

class AccountViewModelMock: AccountViewModelProtocol {
    
    var instructionText: String {
        return ""
    }
    
    var loginButtonHasBeenCalled = false
    
    func loginButtonTap() {
        loginButtonHasBeenCalled = true
    }
    
    func shouldRequestLocation(showAlert: () -> (), askUserPermission: () -> (), completion: () -> ()) {}
    
    
}

class AccountViewControllerTests: QuickSpec {
    
    
    override func spec() {
        
        describe("AccountViewController") {
            var sut: AccountViewController!
            var sutMock: AccountViewModelMock!
            
            beforeEach {
                sutMock = AccountViewModelMock()
                sut = AccountViewController()
                sut.viewModel = sutMock
            }
            
            context("Actions") {
                
                it("tapButton") {
                    sut.loginAction(sender: UIButton())
                    expect(sutMock.loginButtonHasBeenCalled).to(beTrue())
                }
                
                
            }
        }
        
    }
    
}


