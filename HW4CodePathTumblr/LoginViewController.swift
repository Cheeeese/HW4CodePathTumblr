//
//  LoginViewController.swift
//  HW4CodePathTumblr
//
//  Created by Matthew Verghese on 2/27/16.
//  Copyright © 2016 Cheeeese. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var contentView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        contentView.backgroundColor = UIColor(red: 0.20, green: 0.26, blue: 0.34, alpha: 0.9)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didPressCancel(sender: AnyObject) {

        dismissViewControllerAnimated(true, completion: nil)
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
