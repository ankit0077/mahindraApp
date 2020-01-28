//
//  DataManger.swift
//  mahindraApp
//
//  Created by ankit shelar on 20/01/20.
//  Copyright © 2020 ankit shelar. All rights reserved.
//

import Foundation
import UIKit
import Alamofire
import AlamofireImage

class DataManager {
    func getApi(link: String, parameter: [String:Any]?, method:HTTPMethod, Completion: @escaping(_ dict:Any?,_ err:NSError?) -> () ) {
        
                
        Alamofire.request(link, method: method, parameters: parameter).responseJSON { (response) in
            switch response.result {
                case .success:
                    if let finalDict : NSDictionary = response.result.value as? NSDictionary {
                            print("finalJson = \(finalDict)")
                            if finalDict["response_code"] as? String == "success" {
                                Completion(finalDict,nil)
                            }
                            else {
                                Completion(nil,NSError(domain: "Something happpens fishy.....", code: 0, userInfo: nil))
                            }
                    }else {
                        Completion(nil,NSError(domain: "Something Went worng try again later", code: 0, userInfo: nil))
                    }
                case .failure(let error):
                    print("ERROR = \(error)")
                    Completion(nil,NSError(domain: error.localizedDescription, code: 0, userInfo: nil))
            }
        }
    }
    
    func getImage(link: String, parameter:[String:Any]?, method:HTTPMethod, Completion: @escaping(_ image:UIImage?,_ Error:NSError?)-> ()) {
        Alamofire.request(link, method: method, parameters: parameter).responseImage { (response) in
            switch response.result {
            case .success:
                Completion(response.result.value,nil)
            case .failure(let error):
                Completion(nil,NSError(domain: error.localizedDescription, code: 0, userInfo: nil))
            }
        }
    }
}
