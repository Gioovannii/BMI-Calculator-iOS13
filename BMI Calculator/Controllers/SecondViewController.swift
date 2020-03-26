//
//  secondViewController.swift
//  BMI Calculator
//
//  Created by mac on 2020/3/26.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var bmiValue = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        
        let label = UILabel()
        label.text = bmiValue
        label.frame = CGRect(x: 200, y: 400, width: 100, height: 50)
        view.addSubview(label)
    }
}
