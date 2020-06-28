//
//  GalleryTableViewController.swift
//  ProjectforOldman
//
//  Created by Peem on 19/6/2563 BE.
//  Copyright © 2563 Peem. All rights reserved.
//

import UIKit

class GalleryTableViewController: UITableViewController {
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var img1: UIImageView!
    @IBOutlet weak var img2: UIImageView!
    @IBOutlet weak var img3: UIImageView!
    @IBOutlet weak var img4: UIImageView!
    @IBOutlet weak var profile: UIImageView!
    @IBOutlet weak var backview: UIImageView!
    @IBAction func changeButtonColourOnTouch(_ sender: Any) {
       // self.BgColor.backgroundColor = UIColor.red
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        name.text = "\(users[0].name)"
        
        img1.image = UIImage(named: "download")
        img2.image = UIImage(named: "download-1")
        img3.image = UIImage(named: "download-2")
        img4.image = UIImage(named: "images-1")
        profile.image = UIImage(named: userProfile[0].image)
        backview.image = UIImage(named: "ดาวน์โหลด2")
        
     /*   followBotton.layer.cornerRadius = 10
        followBotton.clipsToBounds = true
        followBotton.layer.shadowRadius = 10
        followBotton.layer.shadowOpacity = 1.0*/
      //  followBotton.layer.shadowOffset = CGSize(width: 3, height: 3)
       // followBotton.layer.shadowColor = UIColor.green.cgColor
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }
    @IBAction func onClickRound(_ sender: Any) {
    let  vc = storyboard?.instantiateViewController(identifier: "about") as! AboutTableViewController
    vc.modalPresentationStyle = .fullScreen
    present(vc,animated: true)
    }
    
    @IBAction func favoritesClick(_ sender: Any) {
    let  vc = storyboard?.instantiateViewController(identifier: "profile") as! ProfileTableViewController
    vc.modalPresentationStyle = .fullScreen
    present(vc,animated: true)
    }
    
    @IBAction func settingClick(_ sender: Any) {
    let  vc = storyboard?.instantiateViewController(identifier: "setting") as! SettingTableViewController
    vc.modalPresentationStyle = .fullScreen
    present(vc,animated: true)
    }
    
    @IBAction func xMarkButtom(){
            let  vc = storyboard?.instantiateViewController(identifier: "tabbar") as! TabbarController
              vc.modalPresentationStyle = .fullScreen
              present(vc,animated: true)
              }
    
    

}
