//
//  Contact+CoreDataProperties.swift
//  ContactApp
//
//  Created by Allison Dolan on 10/30/18.
//  Copyright © 2018 Allison Dolan. All rights reserved.
//
//

import Foundation
import CoreData


extension Contact {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Contact> {
        return NSFetchRequest<Contact>(entityName: "Contact")
    }

    @NSManaged public var fname: String?
    @NSManaged public var lname: String?
    @NSManaged public var phone: String?
    @NSManaged public var email: String?

}
