//
//  AccountViewController.swift
//  UnitTestSwift
//
//  Created by Victor Britto e Barros on 17/11/22.
//

import UIKit

class AccountViewController: UIViewController {
    
    let instructionLabel = UILabel()
    let loginButton = UIButton()

    var viewModel: AccountViewModelProtocol?
    
    @objc func loginAction(sender: UIButton) {
        viewModel?.loginButtonTap()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.createLayout()
        
        viewModel?.shouldRequestLocation(showAlert: {
            print("Alerta")
        }, askUserPermission: {
            print("Get user location")
        }, completion: {
            print("Completion")
        })
    }
    
    private func createLayout() {
        instructionLabel.translatesAutoresizingMaskIntoConstraints = false
        instructionLabel.text = "Teste"
        instructionLabel.textAlignment = .center
        
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        loginButton.addTarget(self, action: #selector(loginAction), for: .touchUpInside)
        loginButton.setTitle("Login", for: .normal)
        loginButton.setTitleColor(.white, for: .normal)
        loginButton.backgroundColor = .blue
        
        view.addSubview(instructionLabel)
        view.addSubview(loginButton)
        
        NSLayoutConstraint.activate([
            instructionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            instructionLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            instructionLabel.bottomAnchor.constraint(equalTo: loginButton.topAnchor, constant: -25),
            
            loginButton.widthAnchor.constraint(equalToConstant: 100),
            loginButton.heightAnchor.constraint(equalToConstant: 40),
            loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}
