//
//  AlertFile.swift
//  mahindraApp
//
//  Created by ankit shelar on 25/01/20.
//  Copyright © 2020 ankit shelar. All rights reserved.
//

import Foundation
import UIKit

class AlertFile{
    func alert(title:String,message:String,view:UIViewController) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        DispatchQueue.main.async {
            view.present(alert, animated: true, completion: nil)
        }
        
    }
}
