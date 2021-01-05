//
//  LogInViewController.swift
//  FirebaseAuth
//
//  Created by tami on 12/18/20.
//

import UIKit
import FirebaseAuth


class LogInViewController: UIViewController {

    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet weak var logInButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupElements()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func backButton(_ sender: Any) {
        navigationController?.popViewController(animated: true)
//        dismiss(animated: true, completion: nil)
    }
    @IBAction func logInButtonTapped(_ sender: Any) {
        
        
        //validate textfields
        if emailTextField.text == nil || passwordTextField.text == nil {
            errorLabel.text = "Check all fields"
            errorLabel.alpha = 1
        }else {
            
            let email = emailTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let password = passwordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            //sign in user
            
            Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
                if error != nil {
                    self.errorLabel.text = error!.localizedDescription
                    self.errorLabel.alpha = 1
                } else {
                    let homeViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.homeViewController) as? HomeViewController
                    
                    self.view.window?.rootViewController = homeViewController
                    self.view.window?.makeKeyAndVisible()
                }
            }
        }
        
        
        
        
        
    }
    
    
    func setupElements() {
        //Hide Error Label
        errorLabel.alpha = 0
        
        //Styling the elements
        
        Utilities.styleTextField(passwordTextField)
        Utilities.styleTextField(emailTextField)
        Utilities.styleFilledButton(logInButton)
    }

}
