//
//  TopMainTableViewCell.swift
//  training
//
//  Created by ASW-研修４ on 2020/04/21.
//  Copyright © 2020 ASW-研修４. All rights reserved.
//

import UIKit
import PGFramework
protocol TopMainTableViewCellDelegate: NSObjectProtocol{
}
extension TopMainTableViewCellDelegate {
}
// MARK: - Property
class TopMainTableViewCell: BaseTableViewCell {
    weak var delegate: TopMainTableViewCellDelegate? = nil
}
// MARK: - Life cycle
extension TopMainTableViewCell {
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
// MARK: - Protocol
extension TopMainTableViewCell {
}
// MARK: - method
extension TopMainTableViewCell {
}
