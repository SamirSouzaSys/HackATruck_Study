//
//  Universidade.swift
//  easyGradute
//
//  Created by Student on 5/31/17.
//  Copyright © 2017 SamirSouza. All rights reserved.
//

import Foundation
import Firebase

struct Universidade {
    
    let key: String
    let nome: String
    let descricao: String
    let ref: FIRDatabaseReference?
    let review: String
    let curso: String
    
    init(nome: String, descricao: String, key: String = "") {
        self.key = key
        self.nome = nome
        self.descricao = descricao
        self.ref = nil
        self.review = ""
        self.curso = ""
    }
    
    init(snapshot: FIRDataSnapshot) {
        let snapshotValue = snapshot.value as! [String: AnyObject]
        key = snapshot.key
        nome = snapshotValue["nome"] as! String
        descricao = snapshotValue["descricao"] as! String
        review = snapshotValue["review"] as! String
        curso = snapshotValue["curso"] as! String

        ref = snapshot.ref
    }
    
    func toAnyObject() -> Any {
        return [
            "key": key,
            "nome": nome,
            "descricao": descricao,
            "curso": curso,
            "review": review
        ]
    }
    
}
