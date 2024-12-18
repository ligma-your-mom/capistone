//
//  SignUpViewController.swift
//  capistone
//
//  Created by Shawneice Salmon on 12/16/24.
//

import UIKit
import FirebaseAuth
import FirebaseCore
import GoogleSignIn


class SignUpViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func sig(_ sender: Any) {
        
        GIDSignIn.sharedInstance.signOut()
        
        performSegue(withIdentifier: "signout", sender: nil)

        let firebaseAuth = Auth.auth()
        do {
          try firebaseAuth.signOut()
        } catch let signOutError as NSError {
          print("Error signing out: %@", signOutError)
        }
        
    }
    
}
