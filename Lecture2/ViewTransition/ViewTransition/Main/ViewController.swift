//
//  ViewController.swift
//  ViewTransition
//
//  Created by Min on 15/01/2019.
//  Copyright © 2019 Seongmin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var ageField: UITextField!
    
    
    @IBAction func touchUpSetButton(_ sender: UIButton) {
        UserInformation.shared.name = nameField.text
        UserInformation.shared.age = ageField.text
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    
    
    
    
//    @IBOutlet weak var midConstraint: NSLayoutConstraint!
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        print("ViewController의 view가 메모리에 로드 됨")
//    }
//
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//
//        print("ViewController의 view가 화면에 보여질 예정")
//    }
//
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//
//        self.midConstraint.constant = 100
//        self.view.layoutIfNeeded()  // 즉각 반영
//        print("ViewController의 view가 화면에 보여짐")
//    }
//
//    override func viewWillDisappear(_ animated: Bool) {
//        super.viewWillDisappear(animated)
//
//        print("ViewController의 view가 화면에서 사라질 예정")
//    }
//
//    override func viewDidDisappear(_ animated: Bool) {
//        super.viewDidDisappear(animated)
//
//        print("ViewController의 view가 화면에서 사라짐")
//    }
//
//    // 오토레이아웃때문에 2번 불림
//    // 1번은 뷰가 그려질 때
//    // 2번은 제약조건이 생길 때(추가 변경 삭제)
//    override func viewWillLayoutSubviews() {
//        super.viewWillLayoutSubviews()
//
//        print("ViewController의 view가 subview를 레이아웃 하려 함")
//    }
//
//    override func viewDidLayoutSubviews() {
//        super.viewDidLayoutSubviews()
//
//        print("ViewController의 view가 subview를 레이아웃 함")
//    }
}

