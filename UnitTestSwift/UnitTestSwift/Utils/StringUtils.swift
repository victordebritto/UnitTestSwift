//
//  StringUtils.swift
//  UnitTestSwift
//
//  Created by Victor Britto e Barros on 09/11/22.
//

import Foundation

extension String {
    
    /// Remove espaços
    /// - Returns: retorna String sem espaços
    func removeWhitespace() -> String {
        return self.replace(string: " ", replacement: "")
    }
    
    /// Faz um replace de valores na string conforme parametros
    /// - Parameters:
    ///   - string: string a ser buscada
    ///   - replacement: string a ser substituida
    /// - Returns: retorna String após o replace.
    func replace(string:String, replacement:String) -> String {
        return self.replacingOccurrences(of: string, with: replacement, options: .literal, range: nil)
    }
    
    /// Verifica se a String é um e-mail válido
    /// - Returns: retorna true caso string seja um e-mail valido e falso caso negativo
    func isValidEmail() -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: self)
    }
    
}
