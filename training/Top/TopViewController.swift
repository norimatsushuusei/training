//
//  TopViewController.swift
//  training
//
//  Created by ASW-研修４ on 2020/04/21.
//  Copyright © 2020 ASW-研修４. All rights reserved.
//

import UIKit
import PGFramework
// MARK: - Property
class TopViewController: BaseViewController {
    @IBOutlet weak var mainView: TopMainView!
    @IBOutlet weak var headerView: HeaderView!
}
// MARK: - Life cycle
extension TopViewController {
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
    }
}
// MARK: - Protocol
extension TopViewController :TopMainViewDelegate{
    func didSelectRowAt(indexPath: IndexPath){
        let nextViewController = NextViewController()
        navigationController?.pushViewController(nextViewController, animated: true)
        animatorManager.navigationType = .slide_push
    }
}
// MARK: - method
extension TopViewController {
    func setDelegate() {
        mainView.delegate = self
    }
    func setHeaderView(){
        headerView.setRight(text: "投稿", fontSize: 16, color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
        headerView.setCenter(text: "Home", fontSize: 18, color: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
    }
}