//
//  LogInViewController.swift
//  Parkinger app
//
//  Created by Esmilis on 12/08/16.
//  Copyright © 2016 Parkinger. All rights reserved.
//

import UIKit

class LogInViewController: UIViewController {

    var session: NSURLSession?
   
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
   
    @IBAction func logIn(sender: UIButton) {
        if let name = username.text, let pass = password.text {
            
            navigationController?.popViewControllerAnimated(true)
            
//            UserProfile.login(withUsername: name, andPassword: pass)
            
        }
    }
   
}
