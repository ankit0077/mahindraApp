//
//  DataSaver.swift
//  mahindraApp
//
//  Created by ankit shelar on 25/01/20.
//  Copyright © 2020 ankit shelar. All rights reserved.
//

import Foundation
import UIKit
import CoreData

class DataSaver{
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    func saveData(data:[String:String]) {
        //saving data to core data
        let entity = NSEntityDescription.insertNewObject(forEntityName: "CollegeData", into: context) as! CollegeData
        entity.name = data["name"]
        entity.collegeName = data["collegeName"]
        do {
            try context.save()
            print("Data saved")
        } catch {
            print("error occured.")
        }
    }
    
    func getData() -> [NSManagedObject] {
        var dataFinal : [NSManagedObject] = []
        
        let entity = NSFetchRequest<NSFetchRequestResult>(entityName: "CollegeData")
        do {
            let result = try context.fetch(entity)
            for data in result as! [NSManagedObject] {
                dataFinal.append(data)
            }
        } catch {
            print("Error in fetching data")
        }
        return dataFinal
    }
    
}
