//
//  ViewController.swift
//  test
//
//  Created by Marius on 10/7/15.
//  Copyright © 2015 Marius Horga. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var square: UIView!
    var zoomed = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func tapped(sender: UITapGestureRecognizer) {
        if zoomed {
            UIView.animateWithDuration(0.3, delay: 0, options: [UIViewAnimationOptions.BeginFromCurrentState], animations: {
                let scaleTransform = CGAffineTransformIdentity
                self.square.transform = scaleTransform
                self.zoomed = false
                }, completion: { e in
                    UIView.animateWithDuration(0.3, delay: 0, options: [UIViewAnimationOptions.BeginFromCurrentState], animations: {
                        self.square.backgroundColor = UIColor.blueColor()
                        }, completion: nil
                    )
                }
            )
        } else {
            UIView.animateWithDuration(0.3, delay: 0, options: [UIViewAnimationOptions.BeginFromCurrentState], animations: {
                let scaleTransform = CGAffineTransformMakeScale(30, 30)
                self.square.transform = scaleTransform
                self.zoomed = true
                }, completion: { e in
                    UIView.animateWithDuration(0.3, delay: 0, options: [UIViewAnimationOptions.BeginFromCurrentState], animations: {
                        self.square.backgroundColor = UIColor.yellowColor()
                        }, completion: nil
                    )
                }
            )
        }
    }
}
