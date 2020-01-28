//
//  ProtocolDelegateView1.swift
//  mahindraApp
//
//  Created by ankit shelar on 23/01/20.
//  Copyright © 2020 ankit shelar. All rights reserved.
//

import UIKit

class ProtocolDelegateView1: UIViewController,DataSend {
    func sendingData(name: String, college: String) {
        nameLabel.text = name
        collegeLabel.text = college
    }
    

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var collegeLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func getLabelPressed(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(identifier: "ProtocolDelegateView2") as! ProtocolDelegateView2
        vc.delegate = self
        navigationController?.pushViewController(vc, animated: true)
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
