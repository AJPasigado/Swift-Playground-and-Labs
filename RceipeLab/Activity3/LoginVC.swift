//
//  ViewController.swift
//  Activity3
//
//  Created by Anton John Bibit Pasigado on 03/09/2018.
//  Copyright © 2018 Anton John Pasigado. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var emailAddressBTN: UITextField!
    @IBOutlet weak var passwordBTN: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailAddressBTN.layer.borderColor = UIColor(red: 224/255, green: 224/255, blue: 224/255, alpha: 1).cgColor
        // Do any additional setup after loading the view, typically from a nib.
        emailAddressBTN.layer.borderWidth = 1
        emailAddressBTN.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 8, height: 10))
        emailAddressBTN.leftViewMode = .always
        
        
        passwordBTN.layer.borderColor = UIColor(red: 224/255, green: 224/255, blue: 224/255, alpha: 1).cgColor
        // Do any additional setup after loading the view, typically from a nib.
        passwordBTN.layer.borderWidth = 1
        passwordBTN.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 8, height: 10))
        passwordBTN.leftViewMode = .always
    }


}

