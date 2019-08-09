//
//  FriendListViewController.swift
//  PADCassignment2
//
//  Created by saw pyaehtun on 09/08/2019.
//  Copyright © 2019 saw pyaehtun. All rights reserved.
//

import UIKit

class FriendListViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var friends : [Friend]?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.register(UINib(nibName: String(describing: FriendTableViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: FriendTableViewCell.self))
//        self.tableView.contentInset = UIEdgeInsets(top: 3, left: 0, bottom: 2, right: 0)
        
        self.navigationItem.title = "Friends"
//        self.navigationItem.backBarButtonItem?.title = ""
    }


}

extension FriendListViewController : UITableViewDelegate {
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let cell = tableView.cellForRow(at: indexPath) as! FriendTableViewCell
//            cell.followedUnfollowed()
//    }
    
}

extension FriendListViewController : UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: FriendTableViewCell.self), for: indexPath) as? FriendTableViewCell
        cell?.setUpCell(friend: friends![indexPath.row])
        return cell!
    }
    
}
