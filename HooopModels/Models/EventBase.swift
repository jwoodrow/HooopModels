//
//  EventBase.swift
//  HOOOP
//
//  Created by James Woodrow on 26/01/2018.
//  Copyright © 2018 Hooop. All rights reserved.
//

import UIKit
import CoreData

public class EventBase: NSManagedObject {
    @NSManaged public var id: NSNumber
    @NSManaged public var url_id: String
    @NSManaged public var code: String
    @NSManaged public var gifs: NSMutableOrderedSet
}


