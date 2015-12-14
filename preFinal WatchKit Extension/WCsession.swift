//
//  WCsession.swift
//  preFinal
//
//  Created by Perrine, Levi C on 12/13/15.
//  Copyright © 2015 Perrine, Levi C. All rights reserved.
//

import WatchKit
import Foundation
import WatchConnectivity


class WCsession: WKInterfaceController, WCSessionDelegate
{
    @IBOutlet var button: WKInterfaceButton!
    var session : WCSession!
    override func awakeWithContext(context: AnyObject?)
    {
        super.awakeWithContext(context)
    }
    
    
    @IBAction func buttonPress()
    {
        let cellData = ["newCell" : "This is a test"]
        if WCSession.isSupported()
        {
            session = WCSession.defaultSession()
            session.delegate = self
            session.activateSession()
            session.sendMessage(cellData, replyHandler: nil, errorHandler: nil)
        }
        
    }
    
    override func willActivate()
    {
        super.willActivate()
    }
    
    override func didDeactivate()
    {
        super.didDeactivate()
    }
    
}