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

        NotificationCenter.default.addObserver(forName: notificationName, object: nil, queue: nil) { (notication) in
            guard let value = notication.userInfo else { return }
            guard let username = value["Username"] as? String else { return }
            
            self.resultLabel.text = username
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
