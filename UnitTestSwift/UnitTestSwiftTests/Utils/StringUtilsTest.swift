//
//  StringUtilsTest.swift
//  UnitTestSwiftTests
//
//  Created by Victor Britto e Barros on 09/11/22.
//

import XCTest
@testable import UnitTestSwift

final class StringUtilsTest: XCTestCase {

    func testIsValidEmail() {
        let validEmail = "teste@teste.com.br"
        let invalidEmail = "4 123@.ate"
        
        XCTAssertTrue(validEmail.isValidEmail(), "Não é um e-mail válido")
        XCTAssertFalse(invalidEmail.isValidEmail(), "Não é um e-mail válido")
    }
    
    func testRemoveWhiteSpace() {
        let stringTest = "Teste Teste"
        
        XCTAssertEqual(stringTest.removeWhitespace(), "TesteTeste", "Espaço em branco não foi removido")
    }
    
    func testReplace() {
        let text = "Victor"
        
        XCTAssertEqual(text.replace(string: "c", replacement: "K"), "ViKtor")
    }

}
