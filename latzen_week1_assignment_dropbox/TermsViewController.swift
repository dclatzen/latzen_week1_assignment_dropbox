//
//  TermsViewController.swift
//  latzen_week1_assignment_dropbox
//
//  Created by computer on 10/14/16.
//  Copyright © 2016 Myself. All rights reserved.
//

import UIKit

class TermsViewController: UIViewController {

    
    @IBAction func didPressDoneButton(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }
    @IBOutlet weak var termsWebView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set up the WebView
        
        // Set up a variable to contain the URL
        let url = "https://www.dropbox.com/terms?mobile=1"
        
        // Convert the URL String to a NSURL object
        let requestUrl = NSURL(string:url)
        
        // Place the URL in a URL Request
        let request = NSURLRequest(url: requestUrl as! URL)
        
        //Load request into a WebView
        termsWebView.loadRequest(request as URLRequest)
        
    }
    

}
