//
//  ViewController.swift
//  FirebaseAuth
//
//  Created by tami on 12/18/20.
//

import UIKit
import GoogleSignIn

class RootViewController: UIViewController {

    @IBOutlet weak var logInButton: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var googleSignInButton: GIDSignInButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        GIDSignIn.sharedInstance()?.presentingViewController = self
        setupElements()
    }
    
    
    func transitionToHome() {
        let homeViewController = storyboard?.instantiateViewController(identifier: Constants.Storyboard.homeViewController) as? HomeViewController
        
        view.window?.rootViewController = homeViewController
        view.window?.makeKeyAndVisible()
    }

    func setupElements() {
        Utilities.styleFilledButton(logInButton)
        Utilities.styleFilledButton(signUpButton)
    }
}

