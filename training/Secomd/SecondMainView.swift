//
//  SecondMainView.swift
//  training
//
//  Created by ASW-研修４ on 2020/04/21.
//  Copyright © 2020 ASW-研修４. All rights reserved.
//

import UIKit
import PGFramework
protocol SecondMainViewDelegate: NSObjectProtocol{
    func touchedEditProfileButton()
}
extension SecondMainViewDelegate {
}
// MARK: - Property
class SecondMainView: BaseView {
    weak var delegate: SecondMainViewDelegate? = nil
    @IBOutlet weak var iconView: UIImageView!
    @IBOutlet weak var discriptionLabel: UILabel!
    @IBOutlet weak var touchedEditProfileButton: UIButton!
    @IBAction func touchedEditProfileButton(_ sender: UIButton) {
        if let delegate = delegate{delegate.touchedEditProfileButton()}
    }
}
// MARK: - Life cycle
extension SecondMainView {
    override func awakeFromNib() {
        super.awakeFromNib()
        setLayout()
    }
}
// MARK: - Protocol
extension SecondMainView {
    }
// MARK: - method
extension SecondMainView {
    func setLayout(){
        iconView.layer.cornerRadius = iconView.frame.height / 2
        
            touchedEditProfileButton.layer.borderWidth = 1
            touchedEditProfileButton.layer.cornerRadius = 10
            touchedEditProfileButton.layer.borderColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
    }
    func getModel(userModel: UserModel){
        discriptionLabel.text = userModel.nickname
        if let photo_path = userModel.photo_path {
            if let url = URL(string: photo_path) {
                iconView.af_setImage(withURL: url)
            }
        }
        
    }

        
      
        
    }
