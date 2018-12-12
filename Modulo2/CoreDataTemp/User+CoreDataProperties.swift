//
//  User+CoreDataProperties.swift
//  CoreDataTemp
//
//  Created by alumno on 11/26/18.
//  Copyright © 2018 Area51. All rights reserved.
//
//

import Foundation
import CoreData


extension User {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<User> {
        return NSFetchRequest<User>(entityName: "User")
    }

    @NSManaged public var nombre: String?
    @NSManaged public var apellido: String?
    @NSManaged public var uid: String?

}
