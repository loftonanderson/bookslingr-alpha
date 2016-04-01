//
//  SecondViewController.swift
//  bookslingr-alpha
//
//  Created by Lofton Anderson on 4/1/16.
//  Copyright © 2016 Lofton Anderson. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func logoutButtonTapped(sender: AnyObject) {
        NSUserDefaults.standardUserDefaults().setBool(false,forKey:"isUserLoggedIn");
        NSUserDefaults.standardUserDefaults().synchronize();
        let loginViewController = self.storyboard!.instantiateViewControllerWithIdentifier("loginView") as! LoginPageViewController;
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate;
        appDelegate.window?.rootViewController = loginViewController;
        appDelegate.window?.makeKeyAndVisible();
    }

}

