//
//  GifBase.swift
//  HOOOP
//
//  Created by James Woodrow on 26/01/2018.
//  Copyright © 2018 Hooop. All rights reserved.
//

import UIKit
import Alamofire
import CoreData

open class GifBase: NSManagedObject, Encodable {
    @NSManaged open var uuid: UUID
    @NSManaged open var frameImagesData: [NSData]?
    @NSManaged open var event: EventBase
    @NSManaged open var clients: NSMutableOrderedSet?
    @NSManaged open var created_at: NSDate
    
    open var frameImages: [UIImage]? {
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
    
    open func callback(response:DataResponse<Any>) {
        if (response.response?.statusCode == 200) {
            self.delete()
        }
    }
}


