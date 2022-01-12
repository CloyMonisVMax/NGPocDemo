//
//  ViewController.swift
//  NGPocDemo
//
//  Created by Cloy Monis on 10/01/22.
//

import UIKit
import AppCenter
import AppCenterCrashes

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        AppCenter.start(withAppSecret: "a87c626c-67d2-4ae0-80fa-240fb8897a36", services:[
          Crashes.self
        ])
    }
    
    @IBAction func actionButton(_ sender: Any) {
        print("NGPocDemo")
    }
    
}

