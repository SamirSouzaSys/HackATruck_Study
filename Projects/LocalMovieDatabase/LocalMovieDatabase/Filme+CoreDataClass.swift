//
//  Filme+CoreDataClass.swift
//  LocalMovieDatabase
//
//  Created by Student on 5/24/17.
//  Copyright © 2017 samir. All rights reserved.
//

import Foundation
import CoreData


public class Filme: NSManagedObject {
    convenience init(){
        let context = CoreDataManager.getContext()
        let entity = NSEntityDescription.entity(forEntityName: "Filme", in: context)!
        
        self.init(entity: entity, insertInto: context)
    }
}
