//
//  ThirdMainView.swift
//  training
//
//  Created by ASW-研修４ on 2020/04/22.
//  Copyright © 2020 ASW-研修４. All rights reserved.
//

import UIKit
import PGFramework
protocol ThirdMainViewDelegate: NSObjectProtocol{
    func touchedAddImageButton()
}
extension ThirdMainViewDelegate {
}
// MARK: - Property
class ThirdMainView: BaseView{
    weak var delegate: ThirdMainViewDelegate? = nil
    @IBOutlet weak var postImageView: UIImageView!
    @IBOutlet weak var textField: UITextField!
    @IBAction func touchedAddImageButton(_ sender: UIButton) {
        if let delegate = delegate{delegate.touchedAddImageButton()}
    }
}
// MARK: - Life cycle
extension ThirdMainView {
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
// MARK: - Protocol
extension ThirdMainView {
    }
// MARK: - method
extension ThirdMainView {

}
