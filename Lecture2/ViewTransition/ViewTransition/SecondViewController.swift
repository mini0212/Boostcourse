//
//  SecondViewController.swift
//  ViewTransition
//
//  Created by Min on 15/01/2019.
//  Copyright © 2019 Seongmin. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    @IBAction func popToPrew() {
        self.navigationController?.popViewController(animated: true)
    }

}
