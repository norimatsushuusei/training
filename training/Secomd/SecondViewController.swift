//
//  SecondViewController.swift
//  training
//
//  Created by ASW-研修４ on 2020/04/21.
//  Copyright © 2020 ASW-研修４. All rights reserved.
//

import UIKit
import PGFramework
import FirebaseAuth
// MARK: - Property
class SecondViewController: BaseViewController {
    @IBOutlet weak var mainView: SecondMainView!
    @IBOutlet weak var headerView: HeaderView!
    
    var userModel: UserModel = UserModel()
}
// MARK: - Life cycle
extension SecondViewController {
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
        
        if Auth.auth().currentUser == nil {
            let signUpViewController = SignUpViewController()
            navigationController?.pushViewController(signUpViewController, animated: false)
        }
      
            getModel()
        
    }
}
// MARK: - Protocol
extension SecondViewController :SecondMainViewDelegate{
    func touchedEditProfileButton() {
        let editProfileViewController = EditProfileViewController()
        editProfileViewController.userModel = userModel
        editProfileViewController.modalPresentationStyle = .fullScreen
        present(editProfileViewController, animated: true, completion: nil)
    }
    
}
// MARK: - method
extension SecondViewController {
    func setDelegate() {
        mainView.delegate = self
    }
    func setHeaderView(){
        headerView.setCenter(text: "Mypage", fontSize: 18, color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
        headerView.setLeft(text: "")
    }
    

    
    func getModel(){
        UserModel.readMe { (userModel) in
            self.mainView.getModel(userModel: userModel)
            self.userModel = userModel
        }
    }
}
