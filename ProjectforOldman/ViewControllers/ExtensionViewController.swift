//
//  ExtensionViewController.swift
//  ProjectforOldman
//
//  Created by Peem on 22/6/2563 BE.
//  Copyright © 2563 Peem. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    
    func showAlert(title: String, message: String, handlerOK:((UIAlertAction) -> Void)?, handlerCancle: ((UIAlertAction) -> Void)?) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "OK", style: .destructive, handler:handlerOK )
        let actionCanel = UIAlertAction(title: "Cancle", style: .cancel, handler: handlerCancle)
        alert.addAction(action)
        alert.addAction(actionCanel)
        DispatchQueue.main.async {
            self.present(alert, animated: true, completion: nil)
        }
    }
}
