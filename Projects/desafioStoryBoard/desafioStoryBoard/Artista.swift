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
    let albuns: [Album]
    
    init(nome:String, albuns:[Album]) {self.nome = nome; self.albuns = albuns }
    
}

class Album{
    let nome: String
    let capa: String
    let musicas: [Musica]
    
    init(nome:String, capa:String, musicas:[Musica]){
        self.nome = nome;  self.capa = capa;   self.musicas = musicas
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
                    albuns: [
                        Album(nome: "AlbumNome1.1",
                              capa: "capaAlbum1.1",
                              musicas: [
                                Musica(nome: "musica1.1.1"),
                                Musica(nome: "musica1.1.2"),
                                Musica(nome: "musica1.1.3")
                                ]
                        ),
                        Album(nome: "AlbumNome1.2",
                              capa: "capaAlbum1.2",
                              musicas: [
                                Musica(nome: "musica1.2.1"),
                                Musica(nome: "musica1.2.2"),
                                Musica(nome: "musica1.2.3")
                            ])
                    ]),
                Artista(
                    nome: "ArtistaNome 2",
                    albuns: [
                        Album(nome: "AlbumNome2.1",
                              capa: "capaAlbum2.1",
                              musicas: [
                                Musica(nome: "musica2.1.1"),
                                Musica(nome: "musica2.1.2"),
                                Musica(nome: "musica2.1.3")
                            ]
                        )
                    ]
                ),
            ]
        }
    }
    
    //Método que retorna a lista de lugares para que possamos
    static func getList() -> [Artista]{
        initialize()
        return self.artistas
    }
    
    
    /*static func getLugares() -> [Lugar]{
        initialize()
        return lugares
    }*/
}
