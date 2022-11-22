//
//  AsyncProcess.swift
//  UnitTestSwift
//
//  Created by Victor Britto e Barros on 22/11/22.
//

import Foundation


class AsyncProcess {
    var name = ""
    
//    func doStuff(_ completion: @escaping (String) -> ()) {
//        DispatchQueue.global(qos: .background).asyncAfter(deadline: .now() + 0.1) { [weak self] in
//            completion("Curso")
//        }
//    }
    
    func callThatResultsInSideEffect() {
        DispatchQueue.global(qos: .background).asyncAfter(deadline: .now() + 0.1) { [weak self] in
            self?.name = "Curso"
        }
    }
}
