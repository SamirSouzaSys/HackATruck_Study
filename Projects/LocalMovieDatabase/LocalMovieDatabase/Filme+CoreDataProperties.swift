//
//  Filme+CoreDataProperties.swift
//  LocalMovieDatabase
//
//  Created by Student on 5/24/17.
//  Copyright © 2017 samir. All rights reserved.
//

import Foundation
import CoreData


extension Filme {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Filme> {
        return NSFetchRequest<Filme>(entityName: "Filme");
    }

    @NSManaged public var titulo: String?
    @NSManaged public var diretor: String?
    @NSManaged public var ano: Int16
    @NSManaged public var genero: Genero?

}
