//
//  SecondController.swift
//  protocolDelegate
//
//  Created by Afnan on 21/03/2021.
//

import UIKit

protocol DataPass{
    func dataPassing(name:String, email:String, password:String)
}

class SecondController: UIViewController {
    
    
    @IBOutlet weak var nametxt: UITextField!
    
    
    @IBOutlet weak var emailtxt: UITextField!
    
    
    @IBOutlet weak var passwordtxt: UITextField!
    
    var delegate:DataPass!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func btnPressed(_ sender: UIButton) {
        if nametxt.text == ""{
            alert(title: "Enter name", mes: "", delegate: self)
        }
        else if emailtxt.text == ""{
            alert(title: "Enter email", mes: "", delegate: self)
        }
        else if passwordtxt.text == ""{
            alert(title: "Enter password", mes: "", delegate: self)
        }
        else{
        delegate.dataPassing(name: nametxt.text!, email: emailtxt.text!, password: passwordtxt.text!)
        }
    }
    
    func alert(title:String, mes:String, delegate:AnyObject){
        let alert = UIAlertView()
        alert.title = title
        alert.message = mes
        alert.addButton(withTitle: "Ok")
        alert.delegate = delegate
        alert.show()
    }
}
