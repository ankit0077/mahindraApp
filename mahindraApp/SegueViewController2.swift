//
//  SegueViewController2.swift
//  mahindraApp
//
//  Created by ankit shelar on 27/01/20.
//  Copyright © 2020 ankit shelar. All rights reserved.
//

import UIKit

class SegueViewController2: UIViewController {

    @IBOutlet weak var label10: UILabel!
    @IBOutlet weak var label9: UILabel!
    @IBOutlet weak var label8: UILabel!
    @IBOutlet weak var label7: UILabel!
    @IBOutlet weak var label6: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label3: UILabel!
    var labelText1 = ""
    var labelText2 = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        label1.text = labelText1
        label2.text = labelText2
        label3.text = labelText1
        label4.text = labelText2
        label5.text = labelText1
        label6.text = labelText2
        label7.text = labelText1
        label8.text = labelText2
        label9.text = labelText1
        label10.text = labelText2
        // Do any additional setup after loading the view.
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
