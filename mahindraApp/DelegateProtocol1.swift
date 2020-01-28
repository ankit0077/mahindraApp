//
//  DelegateProtocol1.swift
//  mahindraApp
//
//  Created by ankit shelar on 23/01/20.
//  Copyright © 2020 ankit shelar. All rights reserved.
//

import UIKit

class DelegateProtocol1: UIViewController,DataSent {
    func sendingData(name: String, college: String) {
        labelCollege.text = college
        labelName.text = name
    }
    

    @IBOutlet weak var labelCollege: UILabel!
    @IBOutlet weak var labelName: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func getLabelText(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(identifier: "DelegateProtocol2") as! DelegateProtocol2
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
