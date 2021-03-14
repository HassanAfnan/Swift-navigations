//
//  DetailViewController.swift
//  storyboardnavigation
//
//  Created by Afnan on 14/03/2021.
//

import UIKit

class DetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func detailbtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    @IBAction func thirdbtn(_ sender: Any) {
        let third = self.storyboard?.instantiateViewController(identifier: "ThirdViewController") as! ThirdViewController
        self.navigationController?.pushViewController(third, animated: true)
    }
    
}
