//
//  pickerView.swift
//  preFinal
//
//  Created by Perrine, Levi C on 12/13/15.
//  Copyright © 2015 Perrine, Levi C. All rights reserved.
//

import WatchKit
import Foundation


class pickerView: WKInterfaceController
{
    @IBOutlet var picker: WKInterfacePicker!
    
    var selectedItem = 0
    
    override func awakeWithContext(context: AnyObject?)
    {
        super.awakeWithContext(context)
        
        //Builds "picker":
        var pickerItems = [WKPickerItem]()
        for(var i = 0; i < 10; i++)
        {
            pickerItems.append(WKPickerItem()) // <- Appends an empty picker item to the picker
            pickerItems[i].title = "Title \(i + 1)"
            //This line WOULD set the image, but I've commented it out for the time being, since I have no time to look for images
            //pickerItems[i].contentImage = WKImage(imageName:"blah\(i).gif")
        }
        
        self.picker.setItems(pickerItems)
    }
    
    //Sets a var to the value returned by "picker" (constantly)
    @IBAction func optionSelected(value: Int)
    {
        self.selectedItem = value
    }
    
    //Prints the value returned by "picker"
    @IBAction func actOnValue()
    {
        print(self.selectedItem)
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