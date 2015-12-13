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
    //Enables interdevice communication
    var session : WCSession
    
    @IBOutlet var button: WKInterfaceButton!
    
    override func awakeWithContext(context: AnyObject?)
    {
        super.awakeWithContext(context)
    }
    
    
    @IBAction func buttonPress()
    {
        
        let applicationData = ["counterValue":"5"]
        session.sendMessage(applicationData, replyHandler: {(theReply:[String : AnyObject]) -> Void in}, errorHandler: {(error) -> Void in})
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