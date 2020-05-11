//
//  SignInViewController.swift
//  training
//
//  Created by ASW-研修４ on 2020/05/11.
//  Copyright © 2020 ASW-研修４. All rights reserved.
//

import UIKit
import PGFramework
// MARK: - Property
class SignInViewController: BaseViewController {
    @IBOutlet weak var mainView: SignInMainView!
    
    var userModel: UserModel = UserModel()
}
// MARK: - Life cycle
extension SignInViewController {
    override func loadView() {
        super.loadView()
        setDelegate()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
}
// MARK: - Protocol
extension SignInViewController :SignInMainViewDelegate{
    func touchedSignUpButton() {
        navigationController?.popViewController(animated: true)
        animatorManager.navigationType = .slide_pop
    }
    
    func touchedLogInButton() {
        guard let mail = mainView.emailTextField.text else{return}
        guard let password = mainView.passwordTextField.text else {return}
        UserModel.signIn(email: mail, pass: password, failure: { (error) in
            print("SignInエラー", error)
        }) {
            let topViewController = TopViewController()
            self.navigationController?.pushViewController(topViewController, animated: true)
            self.animatorManager.navigationType = .push
        }
    }
    
}
// MARK: - method
extension SignInViewController {
    func setDelegate() {
        mainView.delegate = self
    }
}
