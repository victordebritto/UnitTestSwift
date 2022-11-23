//
//  AccountBalanceTests.swift
//  UnitTestSwiftTests
//
//  Created by Victor Britto e Barros on 16/11/22.
//

import XCTest
@testable import UnitTestSwift

final class AccountBalanceTests: XCTestCase {
    
    var account: AccountBalance?
    
    
    func testBalance() {
        account = AccountBalance(balance: 100.00)
        
        XCTAssertEqual(account?.balance, 100.00, "Erro ao buscar saldo, valor impatível")
    }
    
    func testGetSpecialLimit100() {
        account = AccountBalance(balance: 100.00)
        
        XCTAssertEqual(account?.getSpecialLimit(), 100.00, "O Saldo maior igual 100 e menor igual a 500 tem o mesmo limite de valor do saldo")
    }
    
    func testGetSpecialLimit50() {
        account = AccountBalance(balance: 50.00)
        
        XCTAssertEqual(account?.getSpecialLimit(), 60.00, "Saldo menor que 100 deve retornar o saldo + 10")
    }
    
    func testGetSpecialLimit500() {
        account = AccountBalance(balance: 500.00)
        
        XCTAssertEqual(account?.getSpecialLimit(), 500.00, "O Saldo maior igual 100 e menor igual a 500 tem o mesmo limite de valor do saldo")
    }
    
    func testGetSpecialLimit600() {
        account = AccountBalance(balance: 600.00)
        XCTAssertEqual(account?.getSpecialLimit(), 1600.00, "Saldo maior que 500 deve retornar o saldo + 1000")
    }
}
