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
}
extension ThirdMainViewDelegate {
}
// MARK: - Property
class ThirdMainView: BaseView{
    weak var delegate: ThirdMainViewDelegate? = nil
    @IBOutlet weak var textField: UITextField!
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
