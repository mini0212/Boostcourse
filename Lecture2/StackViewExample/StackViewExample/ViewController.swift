//
//  ViewController.swift
//  StackViewExample
//
//  Created by Min on 22/07/2019.
//  Copyright © 2019 Seongmin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstStackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        self.firstStackView.distribution = .fillEqually
        
        self.firstStackView.spacing = 10
        
        let label = UILabel(frame: .zero)
        label.text = "label"
        self.firstStackView.addArrangedSubview(label)
        
        print(self.firstStackView.arrangedSubviews)

        
    }


}

