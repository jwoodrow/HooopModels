//
//  GifBase.swift
//  HOOOP
//
//  Created by James Woodrow on 26/01/2018.
//  Copyright © 2018 Hooop. All rights reserved.
//

import UIKit
import CoreData

public class GifBase: NSManagedObject, Encodable {
    @NSManaged public var uuid: UUID
    @NSManaged public var frameImagesData: [NSData]?
    @NSManaged public var event: EventBase
    @NSManaged public var clients: NSMutableOrderedSet?
    @NSManaged public var created_at: NSDate
    
    public var frameImages: [UIImage]? {
        get {
            if (frameImagesData == nil) {
                return nil
            }
            var ret:[UIImage]? = []
            for fID:Data in self.frameImagesData! as [Data] {
                ret!.append(UIImage(data: fID)!)
            }
            return ret
        }
        set {
            if (newValue == nil) {
                self.frameImagesData = nil
            } else {
                var ret:[NSData]? = []
                for fI:UIImage in newValue! as [UIImage] {
                    ret!.append((UIImagePNGRepresentation(fI) as NSData?)!)
                }
                self.frameImagesData = ret
            }
        }
    }
}


