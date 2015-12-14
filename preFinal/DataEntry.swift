//
//  DataEntry.swift
//  preFinal
//
//  Created by Perrine, Levi C on 12/14/15.
//  Copyright © 2015 Perrine, Levi C. All rights reserved.
//

import UIKit

class DataEntry: UIViewController
{

    
    @IBOutlet weak var newValueTextField: UITextField!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        self.newValueTextField.becomeFirstResponder()
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func cancelPressed(sender: AnyObject)
    {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func savePressed(sender: AnyObject)
    {
        phoneCore.rowData.append(self.newValueTextField.text!)
        phoneCore.theTV.reloadData()
        self.dismissViewControllerAnimated(true, completion: nil)
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
