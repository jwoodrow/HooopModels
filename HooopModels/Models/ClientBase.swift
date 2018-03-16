//
//  ClientBase.swift
//  HOOOP
//
//  Created by James Woodrow on 26/01/2018.
//  Copyright © 2018 Hooop. All rights reserved.
//

import UIKit
import CoreData

class ClientBase: NSManagedObject, Encodable {
    @NSManaged var email: String?
    @NSManaged var phone: String?
    @NSManaged var gif: GifBase
}

