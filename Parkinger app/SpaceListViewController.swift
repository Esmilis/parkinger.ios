//
//  SpaceListViewController.swift
//  Parkinger app
//
//  Created by Esmilis on 12/08/16.
//  Copyright © 2016 Parkinger. All rights reserved.
//

import UIKit

class SpaceListViewController: UIViewController {
    
    let session = NSURLSession(configuration: NSURLSessionConfiguration.defaultSessionConfiguration())
    
    override func viewDidAppear(animated: Bool) {
        
        
        
        
        
        
        //        if let profile = UserProfile.loadProfile() {
        //
        //        }
        //        else {
        self.performSegueWithIdentifier("toLoginView", sender: self)
        //        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let loginView = segue.destinationViewController as? LogInViewController {
            loginView.session = self.session
        }
        
    }
    
    @IBAction func unwindToRed(segue: UIStoryboardSegue) {
    }
    
    
}
