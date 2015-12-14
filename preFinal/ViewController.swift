//
//  ViewController.swift
//  preFinal
//
//  Created by Perrine, Levi C on 12/12/15.
//  Copyright © 2015 Perrine, Levi C. All rights reserved.
//

import UIKit
import WatchConnectivity

class ViewController: UIViewController, WCSessionDelegate
{

    @IBOutlet weak var phoneTable: UITableView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        //Enables interdevice communication:
        if WCSession.isSupported()
        {
            let session = WCSession.defaultSession()
            session.delegate = self
            session.activateSession()
        }
    }
    
    //Activates when the phone receives a message from the watch:
    func session(session: WCSession, didReceiveMessage message: [String : AnyObject])
    {
        print(message)
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }


}

