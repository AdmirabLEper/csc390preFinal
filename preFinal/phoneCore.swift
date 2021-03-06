//
//  phoneCore.swift
//  preFinal
//
//  Created by Perrine, Levi C on 12/14/15.
//  Copyright © 2015 Perrine, Levi C. All rights reserved.
//

import UIKit
import Parse

class phoneCore: NSObject
{
    static var rowData = [String]()
    static var theTV : UITableView!
    static var currentUser : PFUser!
    
    static func showAlert(title: String, message: String, presentingViewController: UIViewController, onScreenDelay: Double)
    {
        let av = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.Alert)
        presentingViewController.presentViewController(av, animated: true, completion: { () -> Void in
            let delay = onScreenDelay * Double(NSEC_PER_SEC)
            let time = dispatch_time(DISPATCH_TIME_NOW, Int64(delay))
            dispatch_after(time, dispatch_get_main_queue(), { () -> Void in
                presentingViewController.dismissViewControllerAnimated(true, completion: nil)
            })
        })
        
    }
}
