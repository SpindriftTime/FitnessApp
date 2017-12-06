//
//  ViewController.swift
//  FinalFitnessApp
//
//  Created by Nicholas Jaeger on 12/5/17.
//  Copyright © 2017 Nicholas Jaeger. All rights reserved.
//

import UIKit
import Firebase
import GoogleSignIn

class LoginViewController: UIViewController, GIDSignInUIDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        GIDSignIn.sharedInstance().uiDelegate = self
        // GIDSignIn.sharedInstance().signIn()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func TouchGoogle(_ sender: GIDSignInButton) {
        if currentUser != nil {
            let HomeViewController = self.storyboard?.instantiateViewController(withIdentifier: "HomeVC") as! HomeViewController
            
            self.navigationController?.pushViewController(HomeViewController, animated: true)
    }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
