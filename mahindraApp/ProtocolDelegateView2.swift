//
//  ProtocolDelegateView2.swift
//  mahindraApp
//
//  Created by ankit shelar on 23/01/20.
//  Copyright © 2020 ankit shelar. All rights reserved.
//

import UIKit
import CoreData

protocol DataSend {
    func sendingData(name:String, college:String)
}

class ProtocolDelegateView2: UIViewController {

    var delegate: DataSend!
    @IBOutlet weak var testFieldCollege: UITextField!
    @IBOutlet weak var textFieldName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func saveClicked(_ sender: UIButton) {
        guard let name = textFieldName.text, !name.isEmpty else {
            AlertFile().alert(title: "MahindraApp", message: "Please enter name.", view: self)
            return
        }
        guard let collegeName = testFieldCollege.text, !collegeName.isEmpty else {
            AlertFile().alert(title: "MahindraApp", message: "Please enter college name.", view: self)
            return
        }
        print(name)
        delegate.sendingData(name: textFieldName.text!, college: testFieldCollege.text!)
        let dict = ["name": name, "collegeName":collegeName]
        DataSaver().saveData(data: dict)
        DataSaver().getData()
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
