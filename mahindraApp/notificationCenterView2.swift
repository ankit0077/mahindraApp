//
//  notificationCenterView2.swift
//  mahindraApp
//
//  Created by ankit shelar on 23/01/20.
//  Copyright © 2020 ankit shelar. All rights reserved.
//

import UIKit

class notificationCenterView2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func facebookPressed(_ sender: UIButton) {
        NotificationCenter.default.post(name: .facebook, object: nil)
        navigationController?.popViewController(animated: true)
    }
    
    
    @IBAction func twitterPressed(_ sender: UIButton) {
        NotificationCenter.default.post(name: .twitter, object: nil)
        navigationController?.popViewController(animated: true)
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
