//
//  MainViewController.swift
//  ProjectforOldman
//
//  Created by Peem on 21/6/2563 BE.
//  Copyright © 2563 Peem. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var imgHotel: UIImageView!
    @IBOutlet weak var infoLBL: UILabel!
    @IBOutlet weak var priceLBL: UILabel!
    @IBOutlet weak var locationLBL: UILabel!
        
    @IBOutlet weak var inputTextField: UITextField!
    
    @IBOutlet weak var tab01: UIView!
    @IBOutlet weak var tab02: UIView!
    @IBOutlet weak var tab03: UIView!
    
    @IBOutlet weak var tab1: UIView!
    @IBOutlet weak var tab2: UIView!
    @IBOutlet weak var tab3: UIView!
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!

    @IBAction func onClickOK(_ sender: Any) {

        let someText1:String = """
        เช็คอินวันที่ \(inputTextField.text!)
        ต่อคืน \(label1.text!)
        ผู้ใหญ่ \(label2.text!)
        เด็ก \(label3.text!)
        รวมยอดทั้งสิ้น \(priceLBL.text!)
        """
        
        let alertController = UIAlertController(title: "กรุณาตรวจสอบข้อมูลให้ครบถ้วน", message: someText1, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "Book", style: UIAlertAction.Style.default) {
                UIAlertAction in
            self.performSegue(withIdentifier: "home", sender: nil)
           print("show home")
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel) {
                UIAlertAction in
                print("sdf")
            }
        
            // Add the actions
            alertController.addAction(okAction)
            alertController.addAction(cancelAction)
        
            // Present the controller
        self.present(alertController, animated: true, completion: nil)

    }
    
    func isInt(number: Float) -> Bool {
        return number.truncatingRemainder(dividingBy: 1.0) == 0.0
    }
    
    @IBAction func stepper1(_ sender: UIStepper)
    {
        label1.text = Float(sender.value).clean
    }
    @IBAction func stepper2(_ sender: UIStepper)
    {
        label2.text = Float(sender.value).clean
    }
    @IBAction func stepper3(_ sender: UIStepper)
    {
        label3.text = Float(sender.value).clean
    }
    
    private var datePicker: UIDatePicker?
    
    var image = UIImage()
    var name = ""
    var price = ""
    var location = ""
    
    var imgArr = [  UIImage(named:"Alexandra Daddario"),
                    UIImage(named:"1") ,
                    UIImage(named:"2") ,
                    UIImage(named:"3") ,
                    UIImage(named:"4") ,
                    UIImage(named:"5") ,
                    UIImage(named:"6") ,
                    UIImage(named:"7") ,
                    UIImage(named:"8") ,
                    UIImage(named:"9") ]
    
    var timer = Timer()
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tab01.layer.cornerRadius = 15
        tab01.clipsToBounds = true
        tab01.layer.shadowRadius = 10
        tab01.layer.shadowOpacity = 1.0
        tab01.layer.shadowOffset = CGSize(width: 3, height: 3)
        tab01.layer.shadowColor = UIColor.green.cgColor
        
        tab02.layer.cornerRadius = 15
        tab02.clipsToBounds = true
        tab02.layer.shadowRadius = 10
        tab02.layer.shadowOpacity = 1.0
        tab02.layer.shadowOffset = CGSize(width: 3, height: 3)
        tab02.layer.shadowColor = UIColor.green.cgColor
        
        tab03.layer.cornerRadius = 15
        tab03.clipsToBounds = true
        tab03.layer.shadowRadius = 10
        tab03.layer.shadowOpacity = 1.0
        tab03.layer.shadowOffset = CGSize(width: 3, height: 3)
        tab03.layer.shadowColor = UIColor.green.cgColor
        
        tab1.layer.cornerRadius = 15
        tab1.clipsToBounds = true
        tab1.layer.shadowRadius = 10
        tab1.layer.shadowOpacity = 1.0
        tab1.layer.shadowOffset = CGSize(width: 3, height: 3)
        tab1.layer.shadowColor = UIColor.green.cgColor
        
        tab2.layer.cornerRadius = 15
        tab2.clipsToBounds = true
        tab2.layer.shadowRadius = 10
        tab2.layer.shadowOpacity = 1.0
        tab2.layer.shadowOffset = CGSize(width: 3, height: 3)
        tab2.layer.shadowColor = UIColor.green.cgColor
        
        tab3.layer.cornerRadius = 15
        tab3.clipsToBounds = true
        tab3.layer.shadowRadius = 10
        tab3.layer.shadowOpacity = 1.0
        tab3.layer.shadowOffset = CGSize(width: 3, height: 3)
        tab3.layer.shadowColor = UIColor.green.cgColor
        
        inputTextField.layer.cornerRadius = 20
        inputTextField.clipsToBounds = true
        inputTextField.layer.shadowRadius = 10
        inputTextField.layer.shadowOpacity = 1.0
        inputTextField.layer.shadowOffset = CGSize(width: 3, height: 3)
        inputTextField.layer.shadowColor = UIColor.green.cgColor
    
        infoLBL.text = "\(name)"
        imgHotel.image = image
        priceLBL.text = "\(price)"
        locationLBL.text = "\(location)"
        
        datePicker = UIDatePicker()
        datePicker?.datePickerMode = .date
        datePicker?.addTarget(self, action: #selector(dateChanged(datePicker:)), for: .valueChanged)
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(viewTapped(gestureRecognizer:)))
        
        view.addGestureRecognizer(tapGesture)
        
        inputTextField.inputView = datePicker
        
    }
    
    @objc func viewTapped(gestureRecognizer: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    @objc func dateChanged(datePicker: UIDatePicker) {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "dd/M/yyyy"
    inputTextField.text = dateFormatter.string(from: datePicker.date)
    view.endEditing(true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

extension Float {
    var clean: String {
       return self.truncatingRemainder(dividingBy: 1) == 0 ? String(format: "%.0f", self) : String(self)
    }
}
