//
//  ViewController.swift
//  ObserverPattern
//
//  Created by 劉仲軒 on 2017/4/16.
//  Copyright © 2017年 劉仲軒. All rights reserved.
//

import UIKit

let notificationName = NSNotification.Name("UserNameEntered")

class ViewController: UIViewController {
    
    var abc: UIImage!

    @IBOutlet weak var nameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendAction(_ sender: Any) {
        
        NotificationCenter.default.post(name: notificationName, object: nil, userInfo: ["Username": self.nameTextField.text ?? ""])
        
    }

}

