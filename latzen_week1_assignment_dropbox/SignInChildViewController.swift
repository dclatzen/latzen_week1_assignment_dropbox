//
//  SignInChildViewController.swift
//  latzen_week1_assignment_dropbox
//
//  Created by computer on 10/14/16.
//  Copyright © 2016 Myself. All rights reserved.
//

import UIKit



class SignInChildViewController: UIViewController {

    @IBOutlet weak var signInSuperView: UIView!
    var initialY: CGFloat!
    var offset: CGFloat!

    
    
    @IBAction func didPressBackButton(_ sender: UIBarButtonItem) {
        navigationController!.popViewController(animated: true)
    }
    
    @IBAction func didTapOutsideTextField(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        initialY = signInSuperView.frame.origin.y
        offset = -50
        
        NotificationCenter.default.addObserver(forName: Notification.Name.UIKeyboardWillShow, object: nil, queue: OperationQueue.main) { (notification: Notification) in
            // Any code you put in here will be called when the keyboard is about to display
            self.signInSuperView.frame.origin.y = self.initialY + self.offset
        }
        
        NotificationCenter.default.addObserver(forName: Notification.Name.UIKeyboardWillHide, object: nil, queue: OperationQueue.main) { (notification: Notification) in
            // Any code you put in here will be called when the keyboard is about to hide
            self.signInSuperView.frame.origin.y = self.initialY
        }
        
        
        
    }

    
    @IBAction func didPressWelcome(_ sender: AnyObject) {
        navigationController!.popViewController(animated: true)
    }

}
