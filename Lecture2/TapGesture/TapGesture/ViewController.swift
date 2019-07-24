//
//  ViewController.swift
//  TapGesture
//
//  Created by Min on 17/01/2019.
//  Copyright © 2019 Seongmin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

//    @IBAction func tapView(_ sender: UITapGestureRecognizer) {
//        self.view.endEditing(true)
//    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let tapGesture: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.tapView(_:)))
//        self.view.addGestureRecognizer(tapGesture)
        
        
        let tapGesture: UITapGestureRecognizer = UITapGestureRecognizer()
        tapGesture.delegate = self
        
        self.view.addGestureRecognizer(tapGesture)
    }

}

extension ViewController: UIGestureRecognizerDelegate {
    // 사용자의 터치를 받아도 되는가
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool {
        self.view.endEditing(true)
        return true
    }

}



