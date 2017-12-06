//
//  AppDelegat + GoogleSignin.swift
//  FinalFitnessApp
//
//  Created by Nicholas Jaeger on 12/5/17.
//  Copyright © 2017 Nicholas Jaeger. All rights reserved.
//

// Thanks to the teacher of Swift Almanac youtube videos: I followed along and copied him to get this code
import Foundation
import Firebase
import GoogleSignIn

var currentUser: User?

extension AppDelegate : GIDSignInDelegate {
    
    
    func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error?) {
        // ...
        if let error = error {
            print ("\(error)")
            return
        }
        
        guard let authentication = user.authentication else { return }
        let credential = GoogleAuthProvider.credential(withIDToken: authentication.idToken,
                                                       accessToken: authentication.accessToken)
        // pass to firebase
            Auth.auth().signIn(with: credential) { (user, error) in
            if let error = error {
                print ("\(error)")
                return
            }
            
            // sets user to the variable we defined at the top of page provided by firebase
            print("User Logged In")
            currentUser = Auth.auth().currentUser
            self.moveToHomeScreen()

        }
    }
    
    
    func sign(_ signIn: GIDSignIn!, didDisconnectWith user: GIDGoogleUser!, withError error: Error!) {
        // Perform any operations when the user disconnects from app here.
        print ("Have Disconnected")
}
}
