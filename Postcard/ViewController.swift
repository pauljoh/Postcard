//
//  ViewController.swift
//  Postcard
//
//  Created by PAUL JOHNSON on 20/10/2014.
//  Copyright (c) 2014 PAUL JOHNSON. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterNameMessageField: UITextField!
    
    

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
        nameLabel.hidden = false
        messageLabel.text = enterNameMessageField.text
        messageLabel.textColor = UIColor.redColor()
        
        
        nameLabel.text = enterNameTextField.text
        nameLabel.textColor = UIColor.blueColor()
        
        
        enterNameTextField.resignFirstResponder()
        enterNameTextField.text = ""
        enterNameMessageField.text = ""
        enterNameMessageField .resignFirstResponder()
        
    }

}

