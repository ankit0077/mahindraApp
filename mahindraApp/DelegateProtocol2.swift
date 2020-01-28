//
//  DelegateProtocol2.swift
//  mahindraApp
//
//  Created by ankit shelar on 23/01/20.
//  Copyright © 2020 ankit shelar. All rights reserved.
//

import UIKit

protocol DataSent {
    func sendingData(name:String, college:String)
}

class DelegateProtocol2: UIViewController {

    @IBOutlet weak var collegeTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    var delegate:DataSent!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func saveClicked(_ sender: UIButton) {
        delegate.sendingData(name: nameTextField.text!, college: collegeTextField.text!)
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
