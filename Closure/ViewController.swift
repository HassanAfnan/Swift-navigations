//
//  ViewController.swift
//  Closure
//
//  Created by Afnan on 21/03/2021.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var nametxt: UILabel!
    
    
    @IBOutlet weak var passwordtxt: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func btnPressed(_ sender: UIButton) {
        let secondVc = self.storyboard?.instantiateViewController(withIdentifier: "SecondController") as! SecondController
        
        secondVc.completion = { dist in
            self.nametxt.text = dist["name"] as! String
            self.passwordtxt.text = dist["password"] as! String
        }
        
        self.navigationController?.pushViewController(secondVc, animated: true)
    }
}

