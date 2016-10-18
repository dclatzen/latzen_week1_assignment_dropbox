//
//  CreateAccountChildViewController.swift
//  latzen_week1_assignment_dropbox
//
//  Created by computer on 10/14/16.
//  Copyright © 2016 Myself. All rights reserved.
//

import UIKit

class CreateAccountChildViewController: UIViewController {
    
    
    // Pasword strength indicator
    let weakImage = UIImage(named: "signup_1")
    let soSoImage = UIImage(named: "signup_2")
    let goodImage = UIImage(named: "signup_3")
    let greatImage = UIImage(named: "signup_4")
    
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var passwordStrengthImage: UIImageView!
    @IBOutlet weak var createButton: UIBarButtonItem!
    
    @IBAction func editedPassword(_ sender: AnyObject) {
        let characterCount = passwordField.text?.characters.count
        
        if characterCount! < 1 {
            print ("no input")
            createButton.isEnabled = false
            passwordStrengthImage.image = nil
        }
        else if characterCount! < 4 {
            print ("weak password")
            createButton.isEnabled = true
            passwordStrengthImage.image = weakImage
        } else if characterCount! < 6 {
            print ("so-so password")
            createButton.isEnabled = true
            passwordStrengthImage.image = soSoImage
        } else if characterCount! < 8 {
            print ("good password")
            createButton.isEnabled = true
            passwordStrengthImage.image = goodImage
        } else {
            print("great password!")
            createButton.isEnabled = true
            passwordStrengthImage.image = greatImage
        }
        
    }

    // Keyboard down
    @IBAction func didTapOutsideTextField(_ sender: AnyObject) {
        view.endEditing(true)
    }
    // Back button
    @IBAction func didPressBackButton(_ sender: UIBarButtonItem) {
        navigationController!.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func didPressWelcome(_ sender: AnyObject) {
        navigationController!.popViewController(animated: true)
    }
   

}
