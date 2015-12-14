//
//  login.swift
//  preFinal
//
//  Created by Perrine, Levi C on 12/14/15.
//  Copyright © 2015 Perrine, Levi C. All rights reserved.
//

import UIKit
import Parse

class login: UIViewController
{

    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool)
    {
        usernameField.becomeFirstResponder()
    }

    @IBAction func registerPressed(sender: AnyObject)
    {
        
    }
    
    @IBAction func loginPressed(sender: AnyObject)
    {
        var message = ""
        if self.usernameField.text!.characters.count == 0
        {message = "You must enter a Username"}
        else if passwordField.text!.characters.count == 0
        {message = "You must enter a Password"}
        if(message.characters.count != 0)
        {
            //"I've got a bad feeling about this..." ~Any character from any Star Wars film
            //Displays an error message:
            phoneCore.showAlert("Register Error", message: message, presentingViewController: self, onScreenDelay: 2)
        }
        else
        {
            
        }

    }
    
    override func didReceiveMemoryWarning()
    {
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
