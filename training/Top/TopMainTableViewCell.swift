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
    @IBOutlet weak var iconView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var postImage: UIImageView!
    @IBOutlet weak var userName: UILabel!
}
// MARK: - Life cycle
extension TopMainTableViewCell {
    override func awakeFromNib() {
        super.awakeFromNib()
        setLayout()
    }
}
// MARK: - Protocol
extension TopMainTableViewCell {
}
// MARK: - method
extension TopMainTableViewCell {
    func setLayout(){
        iconView.layer.cornerRadius = iconView.frame.height / 2
    }
    func updateCell(postModel: PostModel) {
        descriptionLabel.text = postModel.description
        
        if let url = URL(string: postModel.image_paths[0]) {
            postImage.af_setImage(withURL: url)
        }
        
        if postModel.post_user_name == "" {
            userName.text = "メンバーがいません"
        } else {
            userName.text = postModel.post_user_name
        }
    }
}
