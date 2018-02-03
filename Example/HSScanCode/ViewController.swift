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

    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func scan(_ sender: Any) {
        let vc = HSScanViewController()
        vc.delegate = self
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

extension ViewController: HSScanViewControllerDelegate {
    func scanFinished(scanResult: ScanResult, error: String?) {
        
        print(scanResult.scanResultString ?? "")
        resultLabel.text = scanResult.scanResultString
    }
}

