//
//  TopMainView.swift
//  training
//
//  Created by ASW-研修４ on 2020/04/21.
//  Copyright © 2020 ASW-研修４. All rights reserved.
//

import UIKit
import PGFramework
protocol TopMainViewDelegate: NSObjectProtocol{
    func didSelectRowAt(indexPath: IndexPath)
     
}
extension TopMainViewDelegate {
}
// MARK: - Property
class TopMainView: BaseView {
    weak var delegate: TopMainViewDelegate? = nil
    @IBOutlet weak var tableView: UITableView!
}
// MARK: - Life cycle
extension TopMainView {
    override func awakeFromNib() {
        super.awakeFromNib()
        setDelegate()
        loadTableViewCellFromXib(tableView: tableView, cellName: "TopMainTableViewCell")
    }
}
// MARK: - Protocol
extension TopMainView :UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TopMainTableViewCell", for: indexPath)as?
            TopMainTableViewCell else {return UITableViewCell()}
        return cell
    }
    
}

extension TopMainView :UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let delegate = delegate {delegate.didSelectRowAt(indexPath: indexPath)}
    }
    
}
// MARK: - method
extension TopMainView {
    func setDelegate() {
        tableView.dataSource = self
        tableView.delegate = self
    }
}
