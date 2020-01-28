//
//  ViewController.swift
//  mahindraApp
//
//  Created by ankit shelar on 20/01/20.
//  Copyright © 2020 ankit shelar. All rights reserved.
//

import UIKit
import Kingfisher

class ViewController: UIViewController {

    var arraySection = ["A","B","C","D","E","F","G","H","I","J"]
    @IBOutlet weak var tableV: UITableView!
    var holiday = [NSDictionary]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        DataManager().getApi(link: "https://mahindralylf.com/apiv1/getholidays", parameter: nil, method: .get) { (dict, error) in
            if error == nil {
                if let finalResponse = dict as? NSDictionary {
                    print("finalResponse = \(finalResponse)")
                    self.holiday = finalResponse["holidays"] as! [NSDictionary]
                    print("holiday = \(self.holiday)")
                    print("holiday count = \(self.holiday.count)")
                    self.tableV.reloadData()
                }
            }else {
                let alert = UIAlertController(title: "MAHINDRA", message: error?.domain, preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                self.present(alert, animated: true, completion: nil)
            }
        }
        // Do any additional setup after loading the view.
    }
}

extension ViewController: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let detailArray = holiday[section].value(forKey: "details") as! [NSDictionary]
        return detailArray.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return holiday.count
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as! TableViewCell
        //cell.lable.text = holiday[section].value(forKey: "month") as? String
        print("image value = \(holiday[section].value(forKey: "image") as! String)")
        var linkVal = holiday[section].value(forKey: "image") as! String
        /*DataManager().getImage(link: linkVal, parameter: nil, method: .get) { (image, error) in
            if error == nil {
                DispatchQueue.main.async {
                    cell.imageV.image = image
                }
                //cell.imageV.image = image
                //self.tableV.reloadData()
            }else {
                print("error in showing image")
            }
        }*/
        cell.imageV.kf.setImage(with: URL(string: linkVal), placeholder: nil, options: nil, progressBlock: nil) { (image, error, cache, bannerUrl) in
            if let image = image {
                cell.imageV.image = image
            }
        }
        //cell.imageV.image = UIImage(named: "sticker.jpg")
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 100
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewSection") as! TableViewSection
        let detailArray = holiday[indexPath.section].value(forKey: "details") as! [NSDictionary]
        cell.labelV.text = detailArray[indexPath.row].value(forKey: "title") as? String
        return cell
    }
}


class TableViewCell: UITableViewCell {
    @IBOutlet weak var lable: UILabel!
    @IBOutlet weak var imageV: UIImageView!
}

class TableViewSection: UITableViewCell {
    @IBOutlet weak var labelV: UILabel!
}

