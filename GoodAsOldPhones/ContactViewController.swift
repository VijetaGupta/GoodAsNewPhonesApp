//
//  ContactViewController.swift
//  GoodAsOldPhones
//
//  Created by Vijeta Gupta on 8/18/16.
//  Copyright © 2016 Vijeta Gupta. All rights reserved.
//

import UIKit

class ContactViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(scrollView)
        // Do any additional setup after loading the view.
    }
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        scrollView.contentSize = CGSizeMake(375, 800)
    }

}
