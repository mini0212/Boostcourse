//
//  ViewController.swift
//  MyDatePicker
//
//  Created by Min on 17/01/2019.
//  Copyright © 2019 Seongmin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var dateLabel: UILabel!
    
    let dateFormatter: DateFormatter = {
        let formatter: DateFormatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
//        formatter.dateStyle = .medium
//        formatter.timeStyle = .medium
        return formatter
    }()

    @IBAction func didDatePickerValueChanged(_ sender: UIDatePicker) {
        print("value change")
        let date: Date = sender.date
        let dateString: String = self.dateFormatter.string(from: date)
        
        self.dateLabel.text = dateString
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.datePicker.addTarget(self, action: #selector(self.didDatePickerValueChanged(_:)), for: .valueChanged)

    }


}

