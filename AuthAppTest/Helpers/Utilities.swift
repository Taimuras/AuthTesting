//
//  Utilities.swift
//  FirebaseAuth
//
//  Created by tami on 12/18/20.
//

import Foundation
import UIKit


class Utilities {
    static func styleTextField(_ textField: UITextField) {
        // Create the bottom line
        let bottomLine = CALayer()
        
        bottomLine.frame = CGRect(x: 0, y: textField.frame.height - 2, width: textField.frame.width, height: 2)
        
        bottomLine.backgroundColor = UIColor.init(red: 48/255, green: 173/255, blue: 99/255, alpha: 1).cgColor
        
        //Remove border on text Field
        textField.borderStyle = .none
        
        //Add the line to the textField
        textField.layer.addSublayer(bottomLine)
    }
    
    
    static func styleFilledButton(_ button: UIButton){
        
        //filled rounded corner style
        button.backgroundColor = UIColor.init(red: 48/255, green: 173/255, blue: 99/255, alpha: 1)
        button.layer.cornerRadius = 25.0
        button.tintColor = UIColor.white
        
    }
    
    static func styleHollowButton(_ button: UIButton){
        
        //Hollow rounded corner style
        button.layer.borderWidth = 2
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.cornerRadius = 25.0
        button.tintColor = UIColor.black
        
    }
    
    static func isPasswordValid(_ password: String) -> Bool{
        
        
        if password.count < 8 {
            return false
        }else {
            return true
        }
    }
}
