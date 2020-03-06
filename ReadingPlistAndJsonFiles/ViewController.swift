//
//  ViewController.swift
//  ReadingPlistAndJsonFiles
//
//  Created by MacStudent on 2020-03-06.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        readPlistData()
    }

    func readPlistData ()
    {
     if let bundlepath =   Bundle.main.path(forResource: "Employee", ofType: "plist")
        {
          //  print(bundlepath)
         if   let dictionary = NSMutableDictionary(contentsOfFile: bundlepath)
         {
           // print(dictionary)
            if let countries = dictionary["countries"] as?[String]
            {
                for  v in countries
                {
                print(v)
                    
                }
            }
            if let userList = dictionary["users"] as? [[String:String]]
            {
                var flag = false
                for user in userList
                {
                    if user ["username"] == "abc" && user ["password"] == "abc@1234"
                    {
                        flag = true
                    }
                }
                if flag == true {
                   print("Valid User")
                }
                        else {
                            print("Invalid  User")
                        }
                    }
                }
            }
    }
}


