//
//  Animal.swift
//  ExemploTableView
//
//  Created by Tiago - Eldorado on 12/9/16.
//  Copyright © 2016 Tiago - Eldorado. All rights reserved.
//

import Foundation

// 1) Classe que define um Animal
class Animal {
    // 2) Properties: são os atributos da classe
    let nome: String
    let espécie: String
    
    let nomeDaFoto: String
    
    // 3) Método de inicalização da classe
    // Com ele que instanciamos novos objetos
    init(nome: String, espécie: String, nomeDaFoto: String) {
        self.nome = nome
        self.espécie = espécie
        
        self.nomeDaFoto = nomeDaFoto
    }
    
}

// 4) Classe de acesso aos dados
class AnimalDAO {
    
    // 5) Método de classe para retornar uma lista de animais
    static func getList() -> [Animal] {
        // Retornamos uma lista com animais
        return [
            Animal(nome: "Bel", espécie: "Cachorro", nomeDaFoto: "cachorro"),
            Animal(nome: "Nat", espécie: "Cisne", nomeDaFoto: "cisne"),
            Animal(nome: "Rob", espécie: "Periquito", nomeDaFoto: "periquito"),
            Animal(nome: "Pete", espécie: "Dromedário", nomeDaFoto: "dromedario"),
            Animal(nome: "Willy", espécie: "Wallaby", nomeDaFoto: "wallaby")
        ]
    }
    
}
