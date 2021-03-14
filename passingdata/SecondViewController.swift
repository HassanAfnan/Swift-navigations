//
//  SecondViewController.swift
//  passingdata
//
//  Created by Afnan on 14/03/2021.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    @IBOutlet weak var emaillbl: UILabel!
    
    @IBOutlet weak var passwordlbl: UILabel!
    
    var email:String! = nil
    var password:String! = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emaillbl.text = email
        passwordlbl.text = password
       // Do any additional setup after loading the view.
    }
    

    
}
