//
//  register.swift
//  preFinal
//
//  Created by Perrine, Levi C on 12/14/15.
//  Copyright © 2015 Perrine, Levi C. All rights reserved.
//

import UIKit
import Parse


class register: UIViewController
{
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var confirmPWfield: UITextField!
    @IBOutlet weak var spinner: UIActivityIndicatorView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool)
    {
        self.usernameField.becomeFirstResponder()
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func cancelPressed(sender: AnyObject)
    {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    @IBAction func confirmPressed(sender: AnyObject)
    {
        var message = ""
        if self.usernameField.text!.characters.count == 0
        {message = "You must enter a Username"}
        else if self.emailField.text!.characters.count == 0
        {message = "You must enter an e-mail address"}
        else if passwordField.text!.characters.count == 0
        {message = "You must enter a password"}
        else if confirmPWfield.text!.characters.count == 0
        {message = "You must confirm the password you entered"}
        else if passwordField.text! != confirmPWfield.text!
        {message = "The passwords you entered did not match"}
        
        if(message.characters.count != 0)
        {
            //"I've got a bad feeling about this..." ~Any character from any Star Wars film
            //Displays an error message:
            phoneCore.showAlert("Register Error", message: message, presentingViewController: self, onScreenDelay: 2)
        }
        else
        {
            let user = PFUser()
            user.username = self.usernameField.text
            user.email = self.emailField.text
            user.password = self.passwordField.text
        
            self.spinner.startAnimating()
            
            user.signUpInBackgroundWithBlock({ (success: Bool, error: NSError?) ->
                Void in
                if(success)
                {
                    //Account is created
                    self.dismissViewControllerAnimated(true, completion: nil)
                    
                }
                else
                {
                    //Give Error Message
                    phoneCore.showAlert("ERROR", message: "It don't work right, hoss.", presentingViewController: self, onScreenDelay: 2)
                }
            })
            
        }
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
