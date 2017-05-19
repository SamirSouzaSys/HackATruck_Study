//
//  Lugar.swift
//  AppDeViagens
//
//  Created by Student on 5/18/17.
//  Copyright © 2017 SamirSouza. All rights reserved.
//

import Foundation

class Lugar{
    let nome: String
    let nomeDaFoto: String
    
    init(nome:String, nomeDaFoto:String){
        self.nome = nome
        self.nomeDaFoto = nomeDaFoto
    }
}

//Data access Object
class LugaresDAO{

    // Array de Lugar
    // - Nosso banco de dados FAKE
    static var lugares = [Lugar]()
    //private
    //var lugares[] = []
    
    //Método para inicializar o nosso array, se necessário
    static func initialize(){
        if lugares.isEmpty{
           lugares = [
            Lugar(nome: "Veridian", nomeDaFoto: "cachoeira1"),
            Lugar(nome: "Pewter", nomeDaFoto: "cachoeira2"),
            Lugar(nome: "Celadon", nomeDaFoto: "casa"),
            Lugar(nome: "Fuschia", nomeDaFoto: "church"),
            Lugar(nome: "Cinnabar", nomeDaFoto: "grama")
            
            ]
        }
    }
    
    //Método que retorna a lista de lugares para que possamos
    static func getLugares() -> [Lugar]{
        initialize()
        return lugares
    }
}
