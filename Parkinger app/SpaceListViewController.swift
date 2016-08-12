//
//  SpaceListViewController.swift
//  Parkinger app
//
//  Created by Esmilis on 12/08/16.
//  Copyright © 2016 Parkinger. All rights reserved.
//

import UIKit

class SpaceListViewController: UIViewController {
    
    override func viewDidAppear(animated: Bool) {
        
        if let profile = UserProfile.loadProfile() {
            
        }
        else {
            self.performSegueWithIdentifier("toLoginView", sender: self)
        }
    }
  
}
