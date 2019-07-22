//
//  SecondViewController.swift
//  ViewTransition
//
//  Created by Min on 15/01/2019.
//  Copyright © 2019 Seongmin. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print("SecondViewController의 view가 메모리에 로드 됨")
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        self.nameLabel.text = UserInformation.shared.name
        self.ageLabel.text = UserInformation.shared.age
        
        print("SecondViewController의 view가 화면에 보여질 예정")
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        print("SecondViewController의 view가 화면에 보여짐")
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

        print("SecondViewController의 view가 화면에서 사라질 예정")
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)

        print("SecondViewController의 view가 화면에서 사라짐")
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()

        print("SecondViewController의 view가 subview를 레이아웃 하려 함")
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

        print("SecondViewController의 view가 subview를 레이아웃 함")
    }

    
    @IBAction func popToPrew() {
        self.navigationController?.popViewController(animated: true)
    }

    @IBAction func dismissModal() {
        self.dismiss(animated: true, completion: nil)
    }
}

// push - 정보의 흐름, 깊이를 가지고 이동
// modal - 단순 팝업, 입력 폼
