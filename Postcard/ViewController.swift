//
//  ViewController.swift
//  Postcard
//
//  Created by Daniel Kwiatkowski on 2015-02-01.
//  Copyright (c) 2015 Daniel Kwiatkowski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var messageLabel: UILabel!// reference to UI Element //set label to lines to 0 or 2 to wrap the text
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        // This code will evaluate if we press the button
        
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text // set to get
        messageLabel.textColor = UIColor.redColor() // info on data gets coloured in red
        
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder() // make keyboard go away
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)// function will update a property
    }

}

