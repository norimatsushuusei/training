//
//  EditProfileMainView.swift
//  training
//
//  Created by ASW-研修４ on 2020/05/11.
//  Copyright © 2020 ASW-研修４. All rights reserved.
//

import UIKit
import PGFramework
protocol EditProfileMainViewDelegate: NSObjectProtocol{
    func touchedLogoutButton() 
}
extension EditProfileMainViewDelegate {
}
// MARK: - Property
class EditProfileMainView: BaseView {
    weak var delegate: EditProfileMainViewDelegate? = nil
    @IBOutlet weak var iconView: UIImageView!
    @IBOutlet weak var textField: UITextField!
    @IBAction func touchedLogoutButton(_ sender: UIButton) {
        if let delegate  = delegate{delegate.touchedLogoutButton()}
    }
}
// MARK: - Life cycle
extension EditProfileMainView {
    override func awakeFromNib() {
        super.awakeFromNib()
        setLayout()
    }
}
// MARK: - Protocol
extension EditProfileMainView {
}
// MARK: - method
extension EditProfileMainView {
    func setLayout() {
        iconView.layer.cornerRadius = iconView.frame.height / 2
    }
    
    func updateView(userModel: UserModel) {
        textField.text = userModel.description
    }
}
