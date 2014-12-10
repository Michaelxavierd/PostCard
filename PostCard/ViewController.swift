//
//  ViewController.swift
//  PostCard
//
//  Created by Michael Donovan on 12/9/14.
//  Copyright (c) 2014 Michael Donovan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var entermessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    @IBOutlet weak var messageLabel2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


    @IBAction func sendMailButtonPressed(sender: UIButton) {
        messageLabel.hidden = false
        messageLabel.text = entermessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        
        entermessageTextField.text = ""
        entermessageTextField.resignFirstResponder()
        
        messageLabel2.hidden = false
        messageLabel2.text = enterNameTextField.text
        enterNameTextField.text = ""
        enterNameTextField.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
    }
}

