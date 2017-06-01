//
//  Review.swift
//  easyGradute
//
//  Created by Student on 5/31/17.
//  Copyright © 2017 SamirSouza. All rights reserved.
//

import Foundation
import Firebase

// Review (Título,Descrição, imagem, conteúdo, link)

struct Curso {
    
    let key: String
    let titulo: String
    let descricao: String
    let imagem: String
    let conteudo: String
    let link: String
    var ref: FIRDatabaseReference?
    //let universidade: String?
    var Timestamp: String {
        return "\(NSDate().timeIntervalSince1970 * 1000)"
    }
    
    init(key: String, titulo: String, descricao: String, imagem: String, conteudo: String, link:String){
        self.ref = nil
        //self.universidade = nil
        self.key = key
        self.titulo = titulo
        self.descricao = descricao
        self.imagem = imagem
        self.conteudo = conteudo
        self.link = link    }
    
    init(snapshot: FIRDataSnapshot) {
        let snapshotValue = snapshot.value as! [String: AnyObject]
        
        key = snapshot.key
        titulo = snapshotValue["titulo"] as! String
        descricao = snapshotValue["descricao"] as! String
        imagem = snapshotValue["imagem"] as! String
        conteudo = snapshotValue["conteudo"] as! String
        link = snapshotValue["link"] as! String
        //universidade = snapshotValue["universidade"] as! String
        
        ref = snapshot.ref
    }
    
    func toAnyObject() -> Any {
        return [
            "key" : key,
            "titulo" : titulo,
            "descricao" : descricao,
            "imagem" : imagem,
            "conteudo" : conteudo,
            "link" : link,
            //"universidade" : universidade
        ]
    }
}
