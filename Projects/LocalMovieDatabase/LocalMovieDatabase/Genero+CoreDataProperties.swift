//
//  Genero+CoreDataProperties.swift
//  LocalMovieDatabase
//
//  Created by Student on 5/24/17.
//  Copyright © 2017 samir. All rights reserved.
//

import Foundation
import CoreData


extension Genero {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Genero> {
        return NSFetchRequest<Genero>(entityName: "Genero");
    }

    @NSManaged public var categoria: String?
    @NSManaged public var filmes: NSSet?

}

// MARK: Generated accessors for filmes
extension Genero {

    @objc(addFilmesObject:)
    @NSManaged public func addToFilmes(_ value: Filme)

    @objc(removeFilmesObject:)
    @NSManaged public func removeFromFilmes(_ value: Filme)

    @objc(addFilmes:)
    @NSManaged public func addToFilmes(_ values: NSSet)

    @objc(removeFilmes:)
    @NSManaged public func removeFromFilmes(_ values: NSSet)

}
