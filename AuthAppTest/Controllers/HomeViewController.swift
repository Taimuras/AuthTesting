//
//  HomeViewController.swift
//  FirebaseAuth
//
//  Created by tami on 12/18/20.
//

import UIKit
import Firebase

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func logOutButtonTapped(_ sender: Any) {
//        transitionToRoot()
        try! Auth.auth().signOut()
    }
    
    
    func transitionToRoot() {
        let rootViewController = storyboard?.instantiateViewController(identifier: Constants.Storyboard.mainViewController) as? RootViewController
        
        view.window?.rootViewController = rootViewController
        view.window?.makeKeyAndVisible()
    }

}
