//
//  UserDefaults.swift
//  FinalFitnessApp
//
//  Created by Nicholas Jaeger on 12/6/17.
//  Copyright © 2017 Nicholas Jaeger. All rights reserved.
//

import UIKit
import GoogleSignIn
import Firebase



class OurDefaults {
    
    static let shared = OurDefaults()
    
    private init() {
        
    }
    
    func loadUserDefaults() {
        currentUser = Auth.auth().currentUser
        if currentUser != nil {
            
            //   Show Home View Controller
            
            let mainStoryBoard: UIStoryboard = UIStoryboard(name:"Main", bundle: nil)
            let homeViewController: UIViewController = mainStoryBoard.instantiateViewController(withIdentifier: "HomeNC")
            let lvc = LaunchingViewController()
            lvc.sendToFirstScreen(screen: homeViewController)
            
        } else {
            
            //Show Login View Controller
            
            let mainStoryBoard: UIStoryboard = UIStoryboard(name:"Main", bundle: nil)
            let loginViewController: UIViewController = mainStoryBoard.instantiateViewController(withIdentifier: "LoginVC")
            let lvc = LaunchingViewController()
            lvc.sendToFirstScreen(screen: loginViewController)
        }
        
    }
    

}
