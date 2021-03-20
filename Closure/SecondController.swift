//
//  SecondController.swift
//  Closure
//
//  Created by Afnan on 21/03/2021.
//

import UIKit

class SecondController: UIViewController {
    typealias completionHandler = ([String:Any]) -> Void
    
    @IBOutlet weak var txtname: UITextField!
    
    @IBOutlet weak var txtpassword: UITextField!
    
    var completion: completionHandler?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func btnPressed(_ sender: UIButton) {
        guard let name = txtname.text else { return }
        guard let password = txtpassword.text else {
          return
        }
        let dist = ["name": name, "password": password]
        
        guard let completionBlock = completion else { return }
        
        completionBlock(dist)
        self.navigationController?.popViewController(animated: true)
    }
}
