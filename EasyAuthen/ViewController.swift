//
//  ViewController.swift
//  EasyAuthen
//
//  Created by Tanut Khositprasert on 2/6/2561 BE.
//  Copyright © 2561 Tanut Khositprasert. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
//    explicit
    var userString: String = ""
    var passwordString: String = ""
    
    var dialogueString = ["Have Space", "Log In Failed", "Welcome to the App"]
    var authenDicString = ["user1":"1111","user2":"2222","user3":"3333","user4":"4444" ]
    
    @IBOutlet weak var UserTextField: UITextField!
    
    @IBOutlet weak var PasswordTextField: UITextField!
    
    @IBOutlet weak var AlertLabel: UILabel!
    
    
    @IBAction func LogInButton(_ sender: Any) {
//        Get Value From TextField
        userString = UserTextField.text!
        passwordString = PasswordTextField.text!
        
        print("User ==> \(userString)")
        print("Password ==> \(passwordString)")
        
//        Check Space
        if (userString.count == 0) || (passwordString.count == 0) {
            AlertLabel.text = dialogueString[0]
        }
        else {
            let truePasswordString = authenDicString[userString] //จับคู่เรียกpasswordออกมา
            print("truePass ==> \(String(describing: truePasswordString))")
            
            if (truePasswordString != nil) && (truePasswordString == passwordString) {
                AlertLabel.text = dialogueString[2]
                
            } //check logIn
            else {
                AlertLabel.text = dialogueString[1]
            }
            
        } //if
        
        
        
        
    } //LogInButton
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

