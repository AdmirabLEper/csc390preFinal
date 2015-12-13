//
//  tableView.swift
//  preFinal
//
//  Created by Perrine, Levi C on 12/12/15.
//  Copyright © 2015 Perrine, Levi C. All rights reserved.
//

import WatchKit
import Foundation


class tableView: WKInterfaceController
{
    
    @IBOutlet var table: WKInterfaceTable!
    
    override func awakeWithContext(context: AnyObject?)
    {
        super.awakeWithContext(context)
        
        let labelNames = ["d4", "d6", "d8", "d10", "d12", "d100"]
        
        //Builds "table":
        self.table.setNumberOfRows(labelNames.count, withRowType: "cell")
                            //"CELL" is the "Row Controller Identifier"
        for(var i = 0; i < labelNames.count; i++)
        {
            let currRow = self.table.rowControllerAtIndex(i) as! row
                            //"row" is a customClass, which contains the "label" and "image" variables used below
            currRow.label.setText(labelNames[i])
            //This line WOULD set the image, but I've commented it out for the time being, since I have no time to look for images
            //currRow.image.setImageNamed("blah\(i).gif")
        }
    }
    
    //Sets the code that will be activated when a certain row is selected (table rows are 0-indexed)
    override func table(table:WKInterfaceTable, didSelectRowAtIndex rowIndex:Int)
    {
        print("\(rowIndex)")
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