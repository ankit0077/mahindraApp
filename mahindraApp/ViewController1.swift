//
//  ViewController1.swift
//  mahindraApp
//
//  Created by ankit shelar on 22/01/20.
//  Copyright © 2020 ankit shelar. All rights reserved.
//

import UIKit

class ViewController1: UIViewController {

    @IBOutlet weak var labelName: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(twitterStuff(_:)), name: .twitter, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(facebookStuff(_:)), name: .facebook, object: nil)
        // Do any additional setup after loading the view.
    }
    
    @objc func twitterStuff(_ notification:Notification) {
        labelName.text = "Twitter"
    }
    @objc func facebookStuff(_ notification:Notification) {
        labelName.text = "Facebook"
    }
    
    @IBAction func selectText(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "ViewController2") as! ViewController2
        navigationController?.pushViewController(vc, animated: true)
    }
    
}

extension Notification.Name {
    static let facebook = Notification.Name("facebook")
    static let twitter = Notification.Name("twitter")
}
