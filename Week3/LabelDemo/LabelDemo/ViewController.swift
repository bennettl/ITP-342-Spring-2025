//
//  ViewController.swift
//  LabelDemo
//
//  Created by Bennett Lee on 1/29/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let labelWidth = 100.0
        let labelHeight = 50.0

        let screenWidth = UIScreen.main.bounds.width
        let screeHeight = UIScreen.main.bounds.height

        let x = (screenWidth - labelWidth) / 2.0
        let y = (screeHeight - labelHeight) / 2.0

        let rect = CGRect(x: x, y: y, width: 100, height: 50)
        let label = UILabel(frame: rect)
        label.text = "Hello World"

        view.addSubview(label)
    }


}

