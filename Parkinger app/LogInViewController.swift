//
//  LogInViewController.swift
//  Parkinger app
//
//  Created by Esmilis on 12/08/16.
//  Copyright © 2016 Parkinger. All rights reserved.
//

import UIKit

class LogInViewController: UIViewController {

   
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
   
    @IBAction func logIn(sender: UIButton) {
        if let name = username.text {
            if let pass = password.text {
                UserProfile.login(withUsername: name, andPassword: pass)
            }
        }
    }
   
}
