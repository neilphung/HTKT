//
//  WelcomeViewController.swift
//  HTKT
//
//  Created by NeilPhung on 7/15/19.
//  Copyright © 2019 NeilPhung. All rights reserved.
//

import UIKit
import Firebase

class WelcomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if Auth.auth().currentUser != nil {
            performSegue(withIdentifier: "goToHome", sender: self)
        }

    }
    





}
