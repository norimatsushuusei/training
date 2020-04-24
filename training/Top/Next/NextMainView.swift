//
//  NextMainView.swift
//  training
//
//  Created by ASW-研修４ on 2020/04/21.
//  Copyright © 2020 ASW-研修４. All rights reserved.
//

import UIKit
import PGFramework
protocol NextMainViewDelegate: NSObjectProtocol{
}
extension NextMainViewDelegate {
}
// MARK: - Property
class NextMainView: BaseView {
    weak var delegate: NextMainViewDelegate? = nil
    @IBOutlet weak var iconView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
}
// MARK: - Life cycle
extension NextMainView {
    override func awakeFromNib() {
        super.awakeFromNib()
        setLayout()
    }
}
// MARK: - Protocol
extension NextMainView {
}
// MARK: - method
extension NextMainView {
    func setLayout(){
        iconView.layer.cornerRadius = iconView.frame.height / 2
    }
}
