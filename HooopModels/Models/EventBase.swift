//
//  EventBase.swift
//  HOOOP
//
//  Created by James Woodrow on 26/01/2018.
//  Copyright © 2018 Hooop. All rights reserved.
//

import UIKit
import CoreData

class EventBase: NSManagedObject {
    @NSManaged var id: NSNumber
    @NSManaged var url_id: String
    @NSManaged var code: String
    @NSManaged var gifs: NSMutableOrderedSet
}


