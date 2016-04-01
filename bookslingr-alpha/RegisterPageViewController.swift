//
//  RegisterPageViewController.swift
//  bookslingr-alpha
//
//  Created by Lofton Anderson on 4/1/16.
//  Copyright © 2016 Lofton Anderson. All rights reserved.
//

import UIKit
//import Parse


class RegisterPageViewController: UIViewController {
    
    @IBOutlet weak var userEmailTextField: UITextField!
    @IBOutlet weak var userPasswordTextField: UITextField!
    @IBOutlet weak var repeatPasswordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func registerButtonTapped(sender: AnyObject) {
        
        let userEmail : String! = userEmailTextField.text;
        let userPassword : String! = userPasswordTextField.text;
        let userRepeatPassword : String! = repeatPasswordTextField.text;
        
        // Check for empty fields
        if(userEmail.isEmpty || userPassword.isEmpty || userRepeatPassword.isEmpty)
        {
            
            // Display alert message
            let myAlert = UIAlertController(title:"Alert", message:"All fields are required.", preferredStyle: UIAlertControllerStyle.Alert);
            
            let okAction = UIAlertAction(title:"Ok", style:UIAlertActionStyle.Default, handler:nil);
            
            myAlert.addAction(okAction);
            
            self.presentViewController(myAlert, animated:true, completion:nil);
            
            return;
        }
        
        //Check if passwords match
        if(userPassword != userRepeatPassword)
        {
            // Display an alert message
            let myAlert = UIAlertController(title:"Alert", message:"Passwords did not match", preferredStyle: UIAlertControllerStyle.Alert);
            
            let okAction = UIAlertAction(title:"Ok", style:UIAlertActionStyle.Default, handler:nil);
            
            myAlert.addAction(okAction);
            
            self.presentViewController(myAlert, animated:true, completion:nil);
            return;
            
        }
        
        // Store data

        
        
        // Go to Login Page
        let loginViewController = self.storyboard!.instantiateViewControllerWithIdentifier("loginView") as! LoginPageViewController;
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate;
        appDelegate.window?.rootViewController = loginViewController;
        appDelegate.window?.makeKeyAndVisible();
        
        
        
    }
    

    
}
