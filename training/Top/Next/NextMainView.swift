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
    @IBOutlet weak var postImage: UIImageView!
    @IBOutlet weak var userName: UILabel!
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
    func updateView(postModel: PostModel){
        if let url = URL(string: postModel.image_paths[0]) {
            postImage.af_setImage(withURL: url)
        }
    }
}
