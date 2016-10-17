//
//  PdfViewController.swift
//  latzen_week1_assignment_dropbox
//
//  Created by computer on 10/16/16.
//  Copyright © 2016 Myself. All rights reserved.
//

import UIKit

class PdfViewController: UIViewController {
    
    @IBOutlet weak var gettingStartedPdfMock: UIImageView!
    
    @IBOutlet weak var pdfScrollView: UIScrollView!

    override func viewDidLoad() {
        super.viewDidLoad()

        pdfScrollView.contentSize = CGSize(width: 375, height: 1100)
        
        // Do any additional setup after loading the view.
    }

 

}
