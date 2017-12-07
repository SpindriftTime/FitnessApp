//
//  HomeViewController.swift
//  FinalFitnessApp
//
//  Created by Nicholas Jaeger on 12/6/17.
//  Copyright © 2017 Nicholas Jaeger. All rights reserved.
//

import UIKit
import Firebase
import GoogleSignIn

class HomeViewController: UIViewController {
    
    @IBOutlet weak var logoutButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func moveToLogin() {
        let mainStoryBoard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let loginViewController: UIViewController = mainStoryBoard.instantiateViewController(withIdentifier: "LoginVC")
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let currentViewController = appDelegate.window?.rootViewController
        appDelegate.window?.rootViewController = loginViewController
        currentViewController?.present(loginViewController, animated: true, completion: nil)
    }
    
    // function to log out
    func firebaseLogOut() {
        if currentUser != nil {
            let firebaseAuth = Auth.auth()
            do {
                try firebaseAuth.signOut()
                currentUser = nil
                print("Sign Out Successful")
            } catch let signOutError {
                print ("Error signing out: \(signOutError)")
            }
        }
        
    }
    
    // logs user out
    @IBAction func LogOutAction(_ sender: UIBarButtonItem) {
        if currentUser != nil {
            let firebaseAuth = Auth.auth()
            do {
                try firebaseAuth.signOut()
                currentUser = nil
                print("Sign Out Successful")
                self.moveToLogin()
            } catch let signOutError {
                print ("Error signing out: \(signOutError)")
            }
        }
    }
}
