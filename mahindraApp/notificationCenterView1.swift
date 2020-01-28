//
//  notificationCenterView1.swift
//  mahindraApp
//
//  Created by ankit shelar on 23/01/20.
//  Copyright © 2020 ankit shelar. All rights reserved.
//

import UIKit

class notificationCenterView1: UIViewController {

    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(facebook(_:)), name: .facebook, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(twitter(_:)), name: .twitter, object: nil)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func selectLabelTextPressed(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(identifier: "notificationCenterView2") as! notificationCenterView2
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func facebook(_ notification:Notification) {
        label.text = "facebook"
    }
    
    @objc func twitter(_ notification:Notification) {
        label.text = "twitter"
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension Notification.Name {
    static let facebook = Notification.Name("facebook")
    static let twitter = Notification.Name("twitter")
}
