//
//  FilmeDAO.swift
//  LocalMovieDatabase
//
//  Created by Student on 5/24/17.
//  Copyright © 2017 samir. All rights reserved.
//

import Foundation
import CoreData

class FilmeDAO{
    // Add
    static func insert(filme: Filme) -> Bool{
        return CoreDataManager.insert(filme)
    }
    
    // Remove
    static func remove(filme: Filme) -> Bool{
        return CoreDataManager.remove(filme)
    }
    
    // Buscar
    static func buscarTodos() -> [Filme] {
        var resultados = [Filme]()
        
        let request: NSFetchRequest<Filme> = Filme.fetchRequest()
        
        request.sortDescriptors = [
            NSSortDescriptor(key: "titulo", ascending: true),
            NSSortDescriptor(key: "ano", ascending: false)
        ]

        // request.predicate = NSPredicate(format: "titulo ==")
        
        do{
            resultados = try CoreDataManager.getContext().fetch(request)
        }catch let error{
            print("Error ao buscar filmes: \(error)")
        }
        return resultados
    }
}
