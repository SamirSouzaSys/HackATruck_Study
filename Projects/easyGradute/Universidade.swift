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
    let review: Review?
    
    init(nome: String, descricao: String, key: String = "") {
        self.key = key
        self.nome = nome
        self.descricao = descricao
        self.ref = nil
        self.review = nil
    }
    
    init(snapshot: FIRDataSnapshot) {
        let snapshotValue = snapshot.value as! [String: AnyObject]
        key = snapshot.key
        nome = snapshotValue["nome"] as! String
        descricao = snapshotValue["descricao"] as! String
        review = snapshotValue["review"] as? Review

        ref = snapshot.ref
    }
    
    func toAnyObject() -> Any {
        return [
            "key": key,
            "nome": nome,
            "descricao": descricao
            //,"review": review ?? <#default value#>
        ]
    }
    
}
