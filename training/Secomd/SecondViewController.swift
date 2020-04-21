//
//  SecondViewController.swift
//  training
//
//  Created by ASW-研修４ on 2020/04/21.
//  Copyright © 2020 ASW-研修４. All rights reserved.
//

import UIKit
import PGFramework
// MARK: - Property
class SecondViewController: BaseViewController {
    @IBOutlet weak var headerView: HeaderView!
    @IBOutlet weak var button: UIButton!
}
// MARK: - Life cycle
extension SecondViewController {
    override func loadView() {
        super.loadView()
        setHeaderView()
        setLayout()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
}
// MARK: - Protocol
extension SecondViewController {
}
// MARK: - method
extension SecondViewController {
    func setHeaderView(){
        headerView.setCenter(text: "Mypage", fontSize: 18, color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
    }
    
    func setLayout() {
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 10
        button.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    }
}
