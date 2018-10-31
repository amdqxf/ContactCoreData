//
//  Contact+CoreDataClass.swift
//  ContactApp
//
//  Created by Allison Dolan on 10/30/18.
//  Copyright © 2018 Allison Dolan. All rights reserved.
//
//

import UIKit
import CoreData

@objc(Contact)
public class Contact: NSManagedObject {
    
    convenience init?(fName: String?, lName: String?, phone: String?, email: String?) {
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        
        guard let managedContext = appDelegate?.persistentContainer.viewContext else{
            return nil
        }
        
        self.init(entity: Contact.entity(), insertInto: managedContext)
        
        self.fname = fName
        self.lname = lName
        self.phone = phone
        self.email = email
    }

}
