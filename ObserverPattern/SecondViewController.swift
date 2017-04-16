//
//  SecondViewController.swift
//  ObserverPattern
//
//  Created by 劉仲軒 on 2017/4/17.
//  Copyright © 2017年 劉仲軒. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        NotificationCenter.default.addObserver(forName: notificationName, object: nil, queue: nil) { (notification) in
            
            guard let value = notification.userInfo else { return }
            guard let name = value["Username"] as? String else { return }
            
            print(name)
            
            self.resultLabel.text = "Your name is : \(name)"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
