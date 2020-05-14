//
//  EditViewController.swift
//  training
//
//  Created by ASW-研修４ on 2020/04/27.
//  Copyright © 2020 ASW-研修４. All rights reserved.
//

import UIKit
import PGFramework
// MARK: - Property
class EditViewController: BaseViewController {
    @IBOutlet weak var headerView: HeaderView!
    @IBOutlet weak var editMainView: EditMainView!
    
    var postModel: PostModel = PostModel()
}
// MARK: - Life cycle
extension EditViewController {
    override func loadView() {
        super.loadView()
        setDelegate()
        setHeaderView()
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
            editMainView.editImageView.image = image
            picker.dismiss(animated: true, completion: nil)
        }
    }
}
// MARK: - Protocol
extension EditViewController :HeaderViewDelegate {
    func touchedLeftButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    func touchedRightButton(_ sender: UIButton) {
        if let text = editMainView.textField.text {
        postModel.description = text
        }
        var images: [UIImage] = []
        if let image = editMainView.editImageView.image {
            images.append(image)
        }
        PostModel.update(request: postModel, images: images) {
            self.dismiss(animated: true, completion: nil)
        }
       
    }
}

extension EditViewController :EditMainViewDelegate {
    func touchedEditImageButton() {
        useCamera()
    }
    
    func touchedDeleteButton() {
        PostModel.delete(id: postModel.id) {
            self.dismiss(animated: true, completion: nil)
        }
    }
    
    
}
// MARK: - method
extension EditViewController {
    func setDelegate() {
        headerView.delegate = self
        editMainView.delegate = self
    }
    func setHeaderView() {
        headerView.setLeft(text: "キャンセル")
        headerView.setRight(text: "完了")
    }
    func giveModel() {
        editMainView.updateView(postModel: postModel)
    }
}
