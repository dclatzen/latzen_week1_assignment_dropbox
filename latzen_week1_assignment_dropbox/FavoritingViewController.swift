//
//  FavoritingViewController.swift
//  latzen_week1_assignment_dropbox
//
//  Created by computer on 10/14/16.
//  Copyright © 2016 Myself. All rights reserved.
//

import UIKit

class FavoritingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func didPressFavorite(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
    }

}
