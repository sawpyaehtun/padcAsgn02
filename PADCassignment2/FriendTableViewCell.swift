//
//  FriendTableViewCell.swift
//  PADCassignment2
//
//  Created by saw pyaehtun on 09/08/2019.
//  Copyright © 2019 saw pyaehtun. All rights reserved.
//

import UIKit

class FriendTableViewCell: UITableViewCell {

    @IBOutlet weak var lblFollow: UILabel!
    @IBOutlet weak var viewFollow: UIView!
    @IBOutlet weak var mvImage:
    
    UIImageView!
    @IBOutlet weak var lblFoodieLevel: UILabel!
    @IBOutlet weak var lblAddress: UILabel!
    @IBOutlet weak var lblName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()

        self.selectionStyle = .none
        mvImage.layer.cornerRadius = mvImage.bounds.size.width / 2
        viewFollow.layer.borderWidth = 2
        viewFollow.layer.cornerRadius = viewFollow.bounds.size.height / 2
        viewFollow.layer.borderColor = UIColor(named: "greenColor")?.cgColor
        lblFollow.textColor = UIColor(named: "greenColor")
        
        let tgr = UITapGestureRecognizer(target: self, action: #selector(followedUnfollowed))
        viewFollow.isUserInteractionEnabled = true
        viewFollow.addGestureRecognizer(tgr)
    }
    
    func setUpCell(friend : Friend) {
        mvImage.image = friend.picture
        lblName.text = friend.name
        lblAddress.text = friend.address
        lblFoodieLevel.text = friend.foodieLevel
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    @objc func followedUnfollowed() {
        if lblFollow.textColor == UIColor.white {
            lblFollow.textColor = UIColor(named: "greenColor")
            viewFollow.backgroundColor = UIColor.white
        } else {
            lblFollow.textColor = UIColor.white
            viewFollow.backgroundColor = UIColor(named: "greenColor")
        }
    }
    
}
