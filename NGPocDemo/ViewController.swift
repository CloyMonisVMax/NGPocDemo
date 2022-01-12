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

    @IBOutlet var btn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        AppCenter.start(withAppSecret: "a87c626c-67d2-4ae0-80fa-240fb8897a36", services:[
          Crashes.self
        ])
        if let appVersion = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String,let buildNumber = Bundle.main.infoDictionary?["CFBundleVersion"] as? String{
            btn.titleLabel?.text = "Click to action \(appVersion)(\(buildNumber))"
        }
        
    }
    
    @IBAction func actionButton(_ sender: Any) {
        print("NGPocDemo")
    }
    
}

