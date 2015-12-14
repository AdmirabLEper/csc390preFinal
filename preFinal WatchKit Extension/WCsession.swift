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
    
    override func awakeWithContext(context: AnyObject?)
    {
        super.awakeWithContext(context)
        
        if WCSession.isSupported()
        {
            let theSession = WCSession.defaultSession()
            theSession.delegate = self
            theSession.activateSession()
        }
    }
    
    
    @IBAction func buttonPress()
    {
        //let cellData = ["newCell" : 17]
        
        //session.sendMessage(cellData, replyHandler: nil, errorHandler: nil)
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