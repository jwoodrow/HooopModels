//
//  ClientBase.swift
//  HOOOP
//
//  Created by James Woodrow on 26/01/2018.
//  Copyright © 2018 Hooop. All rights reserved.
//

import UIKit
import CoreData

public class ClientBase: NSManagedObject, Encodable {
    @NSManaged public var email: String?
    @NSManaged public var phone: String?
    @NSManaged public var gif: GifBase
}

