//
//  LogInViewController.swift
//  HTKT
//
//  Created by NeilPhung on 7/15/19.
//  Copyright © 2019 NeilPhung. All rights reserved.
//

import UIKit
import Firebase

class LogInViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func LogInPressed(_ sender: UIButton) {
        Auth.auth().signIn(withEmail: emailTextfield.text!, password: passwordTextfield.text!) { (user, error) in
            
            if error != nil {
                print(error!)
            }
            else {
               self.performSegue(withIdentifier: "goToHome", sender: self)
            }
        }
    }
    

}
