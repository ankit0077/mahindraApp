//
//  SegueViewController1.swift
//  mahindraApp
//
//  Created by ankit shelar on 27/01/20.
//  Copyright © 2020 ankit shelar. All rights reserved.
//

import UIKit

class SegueViewController1: UIViewController {

    @IBOutlet weak var text1: UITextField!
    @IBOutlet weak var text2: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        text2.text = ""
        text1.text = ""
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! SegueViewController2
        vc.labelText1 = text1.text!
        vc.labelText2 = text2.text!
    }

    @IBAction func savePressed(_ sender: UIButton) {
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
