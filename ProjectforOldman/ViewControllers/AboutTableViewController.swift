//
//  AboutTableViewController.swift
//  ProjectforOldman
//
//  Created by Peem on 19/6/2563 BE.
//  Copyright © 2563 Peem. All rights reserved.
//

import UIKit

class AboutTableViewController: UITableViewController {

    
    @IBOutlet weak var followButtom: UIButton!
    @IBOutlet weak var aboutLBL: UILabel!
    @IBOutlet weak var email: UILabel!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var profile: UIImageView!
    @IBOutlet weak var backView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        profile.image = UIImage(named: userProfile[0].image)
        name.text = "\(users[0].name)"
        email.text = "\(users[0].email)"
        aboutLBL.text = "\(about[0].about)"
        
        
        backView.image = UIImage(named: "ดาวน์โหลด2")
        
        followButtom.layer.cornerRadius = 10
        followButtom.clipsToBounds = true
        followButtom.layer.shadowRadius = 10
        followButtom.layer.shadowOpacity = 1.0
        followButtom.layer.shadowOffset = CGSize(width: 3, height: 3)
        followButtom.layer.shadowColor = UIColor.green.cgColor
       
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

    @IBAction func galleryClick(_ sender: Any) {
    let  vc = storyboard?.instantiateViewController(identifier: "gallery") as! GalleryTableViewController
    vc.modalPresentationStyle = .fullScreen
    present(vc,animated: true)
    }
    
    @IBAction func favoritesClock(_ sender: Any) {
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
