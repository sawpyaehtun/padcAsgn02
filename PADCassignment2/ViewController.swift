//
//  ViewController.swift
//  PADCassignment2
//
//  Created by saw pyaehtun on 08/08/2019.
//  Copyright © 2019 saw pyaehtun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var friends = [Friend]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        imgView.layer.cornerRadius = imgView.frame.size.width/2
        let friendOne = Friend(picture: UIImage(named: "fone")!, name: "Derrick", address: "Moscow", foodieLevel: "Gold Foodie")
        let friendTwo = Friend(picture: UIImage(named: "ftwo")!, name: "Alexandre", address: "Tokyo", foodieLevel: "Silver Foodie")
        let friendThree = Friend(picture: UIImage(named: "fthree")!, name: "Mikhail", address: "Yangon", foodieLevel: "Brownze Foodie")
        let friendFour = Friend(picture: UIImage(named: "ffour")!, name: "Levente", address: "Bangok", foodieLevel: "Gold Foodie")
        let friendFive = Friend(picture: UIImage(named: "ffive")!, name: "Leo", address: "Osaka", foodieLevel: "Platinum Foodie")
        let friendSix = Friend(picture: UIImage(named: "fsix")!, name: "Omer", address: "Singapore", foodieLevel: "Silver Foodie")
        
        friends.append(friendOne)
        friends.append(friendTwo)
        friends.append(friendThree)
        friends.append(friendFour)
        friends.append(friendFive)
        friends.append(friendSix)
        
    }

    @IBAction func btnFriends(_ sender: Any) {
        let vc = FriendListViewController(nibName: String(describing: FriendListViewController.self), bundle: nil)
        vc.friends = friends
       self.navigationController?.pushViewController(vc, animated: true)
    }
    
}

