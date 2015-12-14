//
//  userDashboard.swift
//  preFinal
//
//  Created by Perrine, Levi C on 12/14/15.
//  Copyright © 2015 Perrine, Levi C. All rights reserved.
//

import UIKit
import WatchConnectivity

class userDashboard: UIViewController, WCSessionDelegate
{
    
    @IBOutlet weak var currentUser: UILabel!
    
    var session : WCSession!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view
        self.currentUser.text = phoneCore.currentUser.objectId!
        
        if WCSession.isSupported()
        {
            session = WCSession.defaultSession()
            session.delegate = self
            session.activateSession()
            
        }

    }
    
    func session(session: WCSession, didReceiveMessage message: [String : AnyObject])
    {
        
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
