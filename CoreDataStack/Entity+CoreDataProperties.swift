//
//  Entity+CoreDataProperties.swift
//  CoreDataStack
//
//  Created by Colm Du Ve on 1/10/17.
//  Copyright © 2017 Test. All rights reserved.
//  This file was automatically generated and should not be edited.
//

import Foundation
import CoreData


extension Entity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Entity> {
        return NSFetchRequest<Entity>(entityName: "Entity");
    }

    @NSManaged public var attribute: String?

}
