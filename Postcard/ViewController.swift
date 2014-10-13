//
//  ViewController.swift
//  Postcard
//
//  Created by Gretchen Macdowall on 9/14/14.
//  Copyright (c) 2014 com.gretchenmacdowall. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
   
    @IBOutlet weak var MessageLabel: UILabel!
    
    @IBOutlet weak var EnterNameTextField: UITextField!
    
    @IBOutlet weak var EnterMessageTextField: UITextField!
    
    @IBOutlet weak var sendMailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPress(sender: UIButton) {
        MessageLabel.hidden = false
        MessageLabel.text = EnterMessageTextField.text
        MessageLabel.textColor = UIColor.redColor()
        
        EnterMessageTextField.text = ""
        EnterMessageTextField.resignFirstResponder()
        
        sendMailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        // change to test commit
    }

}

