//
//  ThirdViewController.swift
//  training
//
//  Created by ASW-研修４ on 2020/04/22.
//  Copyright © 2020 ASW-研修４. All rights reserved.
//

import UIKit
import PGFramework
// MARK: - Property
class ThirdViewController: BaseViewController {
    @IBOutlet weak var thirdMainView: ThirdMainView!
    @IBOutlet weak var headerView: HeaderView!
  
        
    }
// MARK: - Life cycle
extension ThirdViewController {
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
    }
}
// MARK: - Protocol
extension ThirdViewController :HeaderViewDelegate{
    func touchedLeftButton(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
        animatorManager.navigationType = .slide_pop
    }
        
   
      
    func touchedRightButton(_ sender: UIButton) {
        let postModel: PostModel = PostModel()
        if let text = thirdMainView.textField.text {
          postModel.description = text
        }
        
        PostModel.create(request: postModel){
        self.navigationController?.popViewController(animated: true)
        self.animatorManager.navigationType = .slide_pop
        }
    }
}
// MARK: - method
extension ThirdViewController {
    func setHeaderView() {
        headerView.setLeft(text: "キャンセル", fontSize: 18)
        headerView.setCenter(text: "新規投稿", fontSize: 18)
        headerView.setRight(text: "シェア",fontSize: 18)
    }
    func setDelegate() {
        headerView.delegate = self
    }
}
