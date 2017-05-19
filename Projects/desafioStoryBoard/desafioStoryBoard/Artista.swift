//
//  Artistas.swift
//  desafioStoryBoard
//
//  Created by Student on 5/19/17.
//  Copyright © 2017 Samir. All rights reserved.
//

import Foundation

class Artista{
    let nome: String
    let album: [Album]
    
    init(nome:String, album:[Album]) {self.nome = nome; self.album = album }
}

class Album{
    let nome: String
    let capa: String
    let musica: [Musica]
    
    init(nome:String, capa:String, musicas:[Musica]){
        self.nome = nome
        self.capa = capa
        self.musica = musicas
    }
}

class Musica{
    let nome: String
    
    init(nome:String){ self.nome = nome }
}

//Data access Object
class ArtistasDAO{
    
    // Array de Artistas
    // - Nosso banco de dados FAKE
    static var artistas = [Artista]()
    //private
    //var artistas[] = []
    
    //Método para inicializar o nosso array, se necessário
    static func initialize(){
        
        if artistas.isEmpty{
            artistas = [
                Artista(
                    nome: "ArtistaNome 1",
                    album: [
                        Album(nome: "AlbumNome1",
                              capa: "capaAlbum1",
                              musicas: [
                                Musica(nome: "musica1"),
                                Musica(nome: "musica2"),
                                Musica(nome: "musica3")
                                ]
                        )
                    ]
                )
            ]
        }
    }
    
    //Método que retorna a lista de lugares para que possamos
    static func getLugares() -> [Lugar]{
        initialize()
        return lugares
    }
}
