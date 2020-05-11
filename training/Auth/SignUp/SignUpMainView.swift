//
//  SignUpMainView.swift
//  training
//
//  Created by ASW-研修４ on 2020/05/08.
//  Copyright © 2020 ASW-研修４. All rights reserved.
//

import UIKit
import PGFramework
protocol SignUpMainViewDelegate: NSObjectProtocol{
    func touchedSignUpButton()
    func touchedSignInButton()
}
extension SignUpMainViewDelegate {
}
// MARK: - Property
class SignUpMainView: BaseView {
    weak var delegate: SignUpMainViewDelegate? = nil
    //Outlet
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    //Action
    @IBAction func touchedSignUpButton(_ sender: UIButton) {
        if let delegate = delegate{delegate.touchedSignUpButton()}
    }
    @IBAction func touchedSignInButton(_ sender: UIButton) {
        if let delegate = delegate{delegate.touchedSignInButton()}
    }
}
// MARK: - Life cycle
extension SignUpMainView {
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
// MARK: - Protocol
extension SignUpMainView {
}
// MARK: - method
extension SignUpMainView {
}
