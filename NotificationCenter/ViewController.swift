//
//  ViewController.swift
//  NotificationCenter
//
//  Created by Afnan on 14/03/2021.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var lbltext: UILabel!
    
    
    @IBOutlet weak var imageview: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        NotificationCenter.default.addObserver(self, selector: #selector(facebook(notification:)), name: .facebook, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(twitter(notification:)), name: .twitter, object: nil)
    }
    
    @objc func facebook(notification:Notification){
        lbltext.text = "Facebook"
        imageview.image = #imageLiteral(resourceName: "Facebook.png")
    }
    
    @objc func twitter(notification:Notification){
        lbltext.text = "Twitter"
        imageview.image = #imageLiteral(resourceName: "Facebook.png")
    }


    @IBAction func btnclick(_ sender: Any) {
        let secondVC = self.storyboard?.instantiateViewController(identifier: "SecondViewController") as! SecondViewController
        self.navigationController?.pushViewController(secondVC, animated: true)
    }
}

extension Notification.Name{
    static let facebook = Notification.Name("Facebook")
    static let twitter = Notification.Name("Twitter")
}





















