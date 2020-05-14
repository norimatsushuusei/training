//
//  EditProfileViewController.swift
//  training
//
//  Created by ASW-研修４ on 2020/05/11.
//  Copyright © 2020 ASW-研修４. All rights reserved.
//

import UIKit
import PGFramework
import FirebaseAuth
// MARK: - Property
class EditProfileViewController: BaseViewController {
    @IBOutlet weak var headerView: HeaderView!
    @IBOutlet weak var mainView: EditProfileMainView!
    
   
    var userModel: UserModel = UserModel()
    var postModel: PostModel = PostModel()
}
// MARK: - Life cycle
extension EditProfileViewController {
    override func loadView() {
        super.loadView()
        setHeaderView()
        setDelegate()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        giveModel()
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[.originalImage] as? UIImage {
            mainView.iconView.image = image
            picker.dismiss(animated: true, completion: nil)
        }
    }
    
}
// MARK: - Protocol
extension EditProfileViewController :HeaderViewDelegate{
    func touchedLeftButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    func touchedRightButton(_ sender: UIButton) {
        if let text = mainView.textField.text {
            userModel.nickname = text
        }
        
        let image = mainView.iconView.image
        UserModel.update(request: userModel, image: image) {
            self.dismiss(animated: true, completion: nil)
        }
    }
}

extension EditProfileViewController: EditProfileMainViewDelegate {
    func editIconButton() {
        useCamera()
    }
    
    func touchedLogoutButton() {
        UserModel.logOut {
            self.dismiss(animated: true, completion: nil)
        }
    }
    
}
// MARK: - method
extension EditProfileViewController {
    func setDelegate() {
        headerView.delegate = self
        mainView.delegate = self
        
    }
    
    func setHeaderView() {
        headerView.setRight(text: "完了", fontSize: 18, color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
        headerView.setCenter(text: "プロフィール編集", fontSize: 18, color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
        headerView.setLeft(text: "キャンセル", fontSize: 18, color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
    }
    func giveModel() {
        mainView.updateView(userModel: userModel)
    }
}
