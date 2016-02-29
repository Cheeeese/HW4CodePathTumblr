//
//  ComposeViewController.swift
//  HW4CodePathTumblr
//
//  Created by Matthew Verghese on 2/27/16.
//  Copyright © 2016 Cheeeese. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {

    @IBOutlet var contentView: UIView!
    
    @IBOutlet weak var textButton: UIButton!
    @IBOutlet weak var photoButton: UIButton!
    @IBOutlet weak var quoteButton: UIButton!
    @IBOutlet weak var linkButton: UIButton!
    @IBOutlet weak var chatButton: UIButton!
    @IBOutlet weak var videoButton: UIButton!
    
    var textButtonStartLocation: CGPoint!
    var photoButtonStartLocation: CGPoint!
    var quoteButtonStartLocation: CGPoint!
    var linkButtonStartLocation: CGPoint!
    var chatButtonStartLocation: CGPoint!
    var videoButtonStartLocation: CGPoint!
    
    override func viewWillAppear(animated: Bool) {
        
        textButtonStartLocation = textButton.center
        photoButtonStartLocation = photoButton.center
        quoteButtonStartLocation = quoteButton.center
        linkButtonStartLocation = linkButton.center
        chatButtonStartLocation = chatButton.center
        videoButtonStartLocation = videoButton.center
        
        textButton.center.y = textButton.center.y + 500
        photoButton.center.y = photoButton.center.y + 500
        quoteButton.center.y = quoteButton.center.y + 500
        linkButton.center.y = linkButton.center.y + 500
        chatButton.center.y = chatButton.center.y + 500
        videoButton.center.y = videoButton.center.y + 500
        
    }
    
    override func viewDidAppear(animated: Bool) {
        animateButtonsIn()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        contentView.backgroundColor = UIColor(red: 0.20, green: 0.26, blue: 0.34, alpha: 0.9)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didPressNevermind(sender: AnyObject) {
        
        dismissViewControllerAnimated(true, completion: nil)

    }
    
    func animateButtonsIn() {
       
        // Text Button Animation
        UIView.animateWithDuration(0.3, delay: 0.4, options: [], animations: { () -> Void in
            self.textButton.center = self.textButtonStartLocation
            
            }) { (Bool) -> Void in
                
        }
        
        // Photo Button Animation
        UIView.animateWithDuration(0.3, delay: 0.0, options: [], animations: { () -> Void in
            self.photoButton.center = self.photoButtonStartLocation
            
            }) { (Bool) -> Void in
                
        }
        
        // Quote Button Animation
        UIView.animateWithDuration(0.3, delay: 0.2, options: [], animations: { () -> Void in
            self.quoteButton.center = self.quoteButtonStartLocation
            
            }) { (Bool) -> Void in
                
        }
        
        // Chat Button Animation
        UIView.animateWithDuration(0.3, delay: 0.1, options: [], animations: { () -> Void in
            self.chatButton.center = self.chatButtonStartLocation
            
            }) { (Bool) -> Void in
                
        }
        
        // Video Button Animation
        UIView.animateWithDuration(0.3, delay: 0.3, options: [], animations: { () -> Void in
            self.videoButton.center = self.videoButtonStartLocation
            
            }) { (Bool) -> Void in
                
        }
        
        // Link Button Animation
        UIView.animateWithDuration(0.3, delay: 0.5, options: [], animations: { () -> Void in
            self.linkButton.center = self.linkButtonStartLocation
            
            }) { (Bool) -> Void in
                
        }

        
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
