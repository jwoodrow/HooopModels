//
//  EventBase.swift
//  HOOOP
//
//  Created by James Woodrow on 26/01/2018.
//  Copyright © 2018 Hooop. All rights reserved.
//

import UIKit
import CoreData

open class EventBase: NSManagedObject {
    @NSManaged open var id: NSNumber
    @NSManaged open var url_id: String
    @NSManaged open var code: String
    @NSManaged open var gifs: NSMutableOrderedSet
}


