//
//  ViewController.swift
//  passingdata
//
//  Created by Afnan on 14/03/2021.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var emailtxt: UITextField!
    
    
    @IBOutlet weak var passwordtxt: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func loginbtn(_ sender: Any) {
        let sec = self.storyboard?.instantiateViewController(withIdentifier: "sec") as! SecondViewController
        
        sec.email = emailtxt.text
        sec.password = passwordtxt.text
        
        self.navigationController?.pushViewController(sec, animated: true)
    }
    

}

