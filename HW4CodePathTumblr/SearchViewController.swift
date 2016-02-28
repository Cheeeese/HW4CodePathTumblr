//
//  SearchViewController.swift
//  HW4CodePathTumblr
//
//  Created by Matthew Verghese on 2/27/16.
//  Copyright © 2016 Cheeeese. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {

    // Declare instance variables for animated loader: loading images, array of images, and animated image
    var loading_1: UIImage!
    var loading_2: UIImage!
    var loading_3: UIImage!
    var images: [UIImage]!
    var animatedImage: UIImage!
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var feedView: UIImageView!
    
    override func viewWillAppear(animated: Bool) {
        imageView.alpha = 1.0
        feedView.alpha = 0.0
        
    }
    
    override func viewDidAppear(animated: Bool) {
        delay(2) {
            
            self.imageView.alpha = 0.0
            UIView.animateWithDuration(0.5, delay: 0.0, options: [], animations: { () -> Void in

                self.feedView.alpha = 1.0
                
                }, completion: { (Bool) -> Void in
                    
            })
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loading_1 = UIImage(named: "loading-1")
        loading_2 = UIImage(named: "loading-2")
        loading_3 = UIImage(named: "loading-3")
        images = [loading_1,loading_2,loading_3]
        animatedImage = UIImage.animatedImageWithImages(images, duration: 1.0)
        
        imageView.image = animatedImage
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
