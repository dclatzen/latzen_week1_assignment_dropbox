//
//  ExistingPhotosViewController.swift
//  latzen_week1_assignment_dropbox
//
//  Created by computer on 10/14/16.
//  Copyright © 2016 Myself. All rights reserved.
//

import UIKit

class ExistingPhotosViewController: UIViewController {

    @IBOutlet weak var existingPhotosScrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        existingPhotosScrollView.contentSize = CGSize(width: 375, height: 700)
        // Do any additional setup after loading the view.
    }
    

}
