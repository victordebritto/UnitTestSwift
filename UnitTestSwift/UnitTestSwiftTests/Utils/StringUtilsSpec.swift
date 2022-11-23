//
//  StringUtilsSpec.swift
//  UnitTestSwiftTests
//
//  Created by Victor Britto e Barros on 17/11/22.
//

import Quick
import Nimble
@testable import UnitTestSwift

class StringUtilsSpec: QuickSpec {
    
    
    override func spec() {
        describe("StringUtils") {
            context("IsValidEmail") {
                it("Valid E-mail") {
                    let validEmail = "teste@teste.com.br"
                    expect(validEmail.isValidEmail())
                        .to(beTrue())
                }
                it("Invalid E-mail") {
                    let invalidEmail = "test @ as"
                    expect(invalidEmail.isValidEmail())
                        .to(beFalse())
                }
            }
            
            context("Replace") {
                it("Replace letter c for K") {
                    let text = "Victor"
                    expect(text.replace(string: "c", replacement: "K"))
                        .to(equal("ViKtor"))
                }
                it("Replace letter that doesn't exist") {
                    let text = "Victor"
                    expect(text.replace(string: "w", replacement: "s"))
                        .to(equal("Victor"))
                }
                it("Replace in empty string") {
                    let text = ""
                    expect(text.replace(string: "j", replacement: "P"))
                        .to(equal(""))
                }
            }
            
            context("RemoveWhitespace") {
                it("Have white space") {
                    let text = "Teste 123 "
                    expect(text.removeWhitespace())
                        .to(equal("Teste123"))
                }
                it("In string without space") {
                    let text = "Testando098"
                    expect(text.removeWhitespace())
                        .to(equal("Testando098"))
                }
            }
        }
        
    }
}
