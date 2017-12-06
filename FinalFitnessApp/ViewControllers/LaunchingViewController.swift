//
//  LaunchingViewController.swift
//  FinalFitnessApp
//
//  Created by Nicholas Jaeger on 12/6/17.
//  Copyright © 2017 Nicholas Jaeger. All rights reserved.
//

import UIKit
import GoogleSignIn

class LaunchingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        //Lets Pause on the Launch Screen for 3 seconds)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(3), execute: {
            OurDefaults.shared.loadUserDefaults()
        })
    }
    
    func sendToFirstScreen(screen: UIViewController) {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.window?.rootViewController = screen
        self.present(screen, animated: true, completion: nil)
    }
            
    
        

 

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
