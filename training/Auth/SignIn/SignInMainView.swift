//
//  SignInMainView.swift
//  training
//
//  Created by ASW-研修４ on 2020/05/11.
//  Copyright © 2020 ASW-研修４. All rights reserved.
//

import UIKit
import PGFramework
protocol SignInMainViewDelegate: NSObjectProtocol{
    func touchedLogInButton()
    func touchedSignUpButton()
}
extension SignInMainViewDelegate {
}
// MARK: - Property
class SignInMainView: BaseView {
    weak var delegate: SignInMainViewDelegate? = nil
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    @IBAction func touchedLogInButton(_ sender: UIButton) {
        if let delegate = delegate{delegate.touchedLogInButton()}
    }
    @IBAction func touchedSignUpButton(_ sender: UIButton) {
        if let delegate = delegate{delegate.touchedSignUpButton()}
    }
}
// MARK: - Life cycle
extension SignInMainView {
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
// MARK: - Protocol
extension SignInMainView {
}
// MARK: - method
extension SignInMainView {
}
