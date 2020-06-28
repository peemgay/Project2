//
//  ViewController4.swift
//  ProjectforOldman
//
//  Created by Peem on 22/6/2563 BE.
//  Copyright © 2563 Peem. All rights reserved.
//

import UIKit

class ViewController4: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onClickOK(_ sender: Any) {
        showAlert(title: "Success", message: "คุณต้องการจ่ายเงินหรือไม่", handlerOK: { action in
            print("Action Called")
        }, handlerCancle: {actionCanel in
            print("Action cancel called")
        })
    }
    
}
