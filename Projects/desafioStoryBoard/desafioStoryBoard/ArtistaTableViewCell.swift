//
//  ArtistaTableViewCell.swift
//  desafioStoryBoard
//
//  Created by Student on 5/22/17.
//  Copyright © 2017 Samir. All rights reserved.
//

import UIKit

class ArtistaTableViewCell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!

    @IBOutlet weak var subTitleLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
