//
//  ThirdViewController.swift
//  storyboardnavigation
//
//  Created by Afnan on 14/03/2021.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func detailbtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    @IBAction func homebtn(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }
}
