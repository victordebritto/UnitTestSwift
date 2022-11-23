//
//  Before.swift
//  UnitTestSwiftTests
//
//  Created by Victor Britto e Barros on 17/11/22.
//

import Quick

/// Exemplo de uso do BeforeEach e AfterEach
class BeforeEachAfterEach: QuickSpec {
  override func spec() {
    describe("beforeEach and afterEach behaviour") {
      beforeEach {
        print("⭐️ Describe before each")
      }

      context("some context") {
        beforeEach {
          print("👉 context before each")
        }

        it("example 1") { print("😊 example 1") }

        it("example 2") { print("😊 example 2") }

        it("example 3") { print("😊 example 3") }

        afterEach {
          print("👉 context after each")
        }
      }

      context("another context") {
        beforeEach {
          print("🍎 context before each")
        }

        it("example 1") { print("😜 example 1") }

        it("example 2") { print("😜 example 2") }

        afterEach {
          print("🍎 context after each")
        }
      }

      afterEach {
        print("⭐️ Describe after each")
      }
    }
  }
}
