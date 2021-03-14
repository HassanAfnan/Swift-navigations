//
//  SecondViewController.swift
//  NotificationCenter
//
//  Created by Afnan on 14/03/2021.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func facebookbtn(_ sender: UIButton) {
        NotificationCenter.default.post(name:.facebook, object: nil)
    }
    
    
    @IBAction func twitterbtn(_ sender: UIButton) {
        NotificationCenter.default.post(name: .twitter, object: nil)
    }
    
}
