//
//  UserProfile.swift
//  Parkinger app
//
//  Created by Esmilis on 12/08/16.
//  Copyright © 2016 Parkinger. All rights reserved.
//

import Foundation

class UserProfile {
    var userName:String
    var sessionKey:String
    var isLoggedIn:Bool = false
    
    init(userName:String, sessionKey:String) {
        self.userName = userName
        self.sessionKey = sessionKey
    }
    
    
    static func loadProfile() -> String? {
        let url = NSURL(string: "http://parkinger.net/api/user/login")!
        
        let task = NSURLSession.sharedSession().dataTaskWithURL(url){ data,response,error in
            if let localError = error {
                print(localError.localizedDescription)
                    return
                }
                do {
                    if let responseJSON = try NSJSONSerialization.JSONObjectWithData(data!, options: .AllowFragments) as? [String:AnyObject]{
                        print(responseJSON)
                        print(response)
                    }
                    
                    if let headers = response as? NSHTTPURLResponse {
                        print(headers.allHeaderFields)
                    }
                } catch {
                    print("othererror")
                }
            }
            
            
            task.resume()
        
        return nil
    }

    
    static func login(withUsername userName:String, andPassword password:String) -> String? {
        do {
            
            let requestData = [ "username":userName, "password":password, "remember":true ]
       
            let jsonData = try NSJSONSerialization.dataWithJSONObject(requestData, options: .PrettyPrinted)
            
            let url = NSURL(string: "http://parkinger.net/api/user/login")!
            let request = NSMutableURLRequest(URL: url)
            request.HTTPMethod = "POST"
            request.HTTPBody = jsonData
            request.setValue("application/json; charset=utf-8", forHTTPHeaderField: "Content-Type")
            print(request)
        
            let task = NSURLSession.sharedSession().dataTaskWithRequest(request){ data,response,error in
                if let localError = error {
                    print(localError.localizedDescription)
                    return
                }
                do {
                    if let responseJSON = try NSJSONSerialization.JSONObjectWithData(data!, options: .AllowFragments) as? [String:AnyObject]{
                        print(responseJSON)
                        print(response)
                    }
                    
                    if let headers = response as? NSHTTPURLResponse {
                        print(headers.allHeaderFields)
                    }
                } catch {
                    print("othererror")
                }
            }
       

        task.resume()
        } catch {
            print("err")
        }
    
        return nil
    }
}