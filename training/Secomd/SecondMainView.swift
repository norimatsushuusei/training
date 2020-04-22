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
}
extension SecondMainViewDelegate {
}
// MARK: - Property
class SecondMainView: BaseView {
    weak var delegate: SecondMainViewDelegate? = nil
    @IBOutlet weak var iconView: UIImageView!
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
    }
}
