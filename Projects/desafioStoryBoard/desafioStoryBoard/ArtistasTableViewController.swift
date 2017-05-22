//
//  ArtistasTableViewController.swift
//  desafioStoryBoard
//
//  Created by Student on 5/22/17.
//  Copyright © 2017 Samir. All rights reserved.
//

import UIKit

class ArtistasTableViewController: UITableViewController {

    var artistas = [Artista]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.artistas = ArtistasDAO.getList()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.artistas.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...
        let cell = tableView.dequeueReusableCell(withIdentifier: "artistaIdentifier", for: indexPath)
        if let ArtistaCell = cell as? ArtistaTableViewCell{
            
            let artista = self.artistas[indexPath.row]
            //nome artista

            
//            let imagePaths = ["star": "/glyphs/star.png",
//                              "portrait": "/images/content/portrait.jpg",
//                              "spacer": "/images/shared/spacer.gif"]
//            
//            for (name, path) in imagePaths {
//                print("The path to '\(name)' is '\(path)'.")
//            }
            for(k,v) in artista.albuns.enumerated(){
                for (ks,vs) in v.musicas.enumerated(){
                    ArtistaCell.subTitleLabel.text = artista.nome
                    ArtistaCell.titleLabel.text = String(vs.nome)
                }
            }
            
            
                
                
//                key in artista.albuns{
//                for artista[key] in albuns.musicas{
//                    //for(kss,vss) in ks[musicas]{
//                        ArtistaCell.titleLabel.text = String(vs.nome)
//                    //}
//                }
//            }
            
            
            //Nome Música
            //ArtistaCell.titleLabel.text = String(artista.album)
            
        }
        return cell
        
        
        /*
        11) Descomente o método:
        override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
        e implemente a configuração das células
            - Defina o identifier do protótipo de célula e atualize sua célula no storyboard (atributo Identifier) de forma que ele fique com o mesmo Identifier que seu método busca.
        - Faça a conversão da cell para a classe AnimalTableViewCell
        - Use o indexPath.row para saber em que linha da tabela o método está e pegue o animal correspondente para preencher os dados da célula convertida
        - Modifique o valor do texto das labels e inicie a imagem
        ARQUIVO: Controller -> AnimaisTableViewController.swift */

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
