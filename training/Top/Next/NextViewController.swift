//
//  NextViewController.swift
//  training
//
//  Created by ASW-研修４ on 2020/04/21.
//  Copyright © 2020 ASW-研修４. All rights reserved.
//

import UIKit
import PGFramework
// MARK: - Property
class NextViewController: BaseViewController {
    @IBOutlet weak var headerView: HeaderView!
    @IBOutlet weak var nextMainView: NextMainView!
    
    
    var postModel: PostModel = PostModel()
}
// MARK: - Life cycle
extension NextViewController {
    override func loadView() {
        super.loadView()
        setDelegate()
        setHeaderView()
        
     //   print("DESC: ",postModel.description)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setLabel()
        getModel()
    }
}
// MARK: - Protocol
extension NextViewController :HeaderViewDelegate{
    func touchedLeftButton(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
        animatorManager.navigationType = .slide_pop
    }
    func touchedRightButton(_ sender: UIButton) {
        let editViewController = EditViewController()
        editViewController.postModel = postModel
        editViewController.modalPresentationStyle = .fullScreen
        present(editViewController, animated: true, completion: nil)
      //  present(editViewController, animated: true) {
      //     print("遷移成功")
      // }
        
    }
}
// MARK: - method
extension NextViewController {
    func setDelegate(){
        headerView.delegate = self
    }
    func setHeaderView(){
        headerView.setLeft(text: "＜", fontSize: 18)
        headerView.setCenter(text: "投稿詳細", fontSize: 18)
        if let image = UIImage(named: "edit") {
            headerView.setRight(image: image)
        }
    }
    func setLabel(){
        nextMainView.descriptionLabel.text = postModel.description
    }
    func getModel() {
        PostModel.readAt(id: postModel.id, success: { (postModel) in
            self.postModel = postModel
        }) {
            self.navigationController?.popViewController(animated: true)
            self.animatorManager.navigationType = .slide_pop
        }
    }
    
}
