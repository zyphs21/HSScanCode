//
//  ViewController.swift
//  HSScanCode
//
//  Created by zyphs21 on 01/30/2018.
//  Copyright (c) 2018 zyphs21. All rights reserved.
//

import UIKit
import HSScanCode

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let testView = UIView(frame: CGRect(x: 60, y: 162, width: 255, height: 255))
        testView.backgroundColor = UIColor.clear
        testView.layer.borderColor = UIColor.cyan.cgColor
        testView.layer.borderWidth = 1
        testView.isUserInteractionEnabled = false
        view.addSubview(testView)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func scan(_ sender: Any) {
        let vc = HSScanViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

