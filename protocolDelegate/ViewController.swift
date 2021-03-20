//
//  ViewController.swift
//  protocolDelegate
//
//  Created by Afnan on 21/03/2021.
//

import UIKit

class ViewController: UIViewController, DataPass {
    
    @IBOutlet weak var namelbl: UILabel!
    
    
    @IBOutlet weak var emaillbl: UILabel!
    
    
    @IBOutlet weak var passwordlbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func btnPressed(_ sender: UIButton) {
        let secondVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondController") as! SecondController
        secondVC.delegate = self
        self.navigationController?.pushViewController(secondVC, animated: true)
    }
    
    func dataPassing(name: String, email: String, password: String) {
        namelbl.text = name
        emaillbl.text = email
        passwordlbl.text = password
    }
}

