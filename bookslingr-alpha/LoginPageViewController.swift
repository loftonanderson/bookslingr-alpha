//
//  LoginPageViewController.swift
//  bookslingr-alpha
//
//  Created by Lofton Anderson on 4/1/16.
//  Copyright © 2016 Lofton Anderson. All rights reserved.
//

import UIKit

class LoginPageViewController: UIViewController {

    @IBOutlet weak var userEmailTextField: UITextField!
    @IBOutlet weak var userPasswordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func loginButtonTapped(sender: AnyObject) {
        
        let userEmail : String! = userEmailTextField.text;
        let userPassword : String! = userPasswordTextField.text;
        
        // Get users from DB
        
        
        // Check if Valid 
        if (userEmail == "Admin"){
            if (userPassword == "Admin"){
                // Login Successful
                NSUserDefaults.standardUserDefaults().setBool(true,forKey:"isUserLoggedIn");
                NSUserDefaults.standardUserDefaults().synchronize();
            
                
                // Go to MarketPlace
                performSegueWithIdentifier("toMarketplace", sender: nil)
                
            }
        } else {
            NSUserDefaults.standardUserDefaults().setBool(true,forKey:"isUserLoggedIn");
            NSUserDefaults.standardUserDefaults().synchronize();
        }
    }
}
