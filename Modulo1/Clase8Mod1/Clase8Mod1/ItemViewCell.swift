//
//  ItemViewCell.swift
//  Clase8Mod1
//
//  Created by alumno on 11/12/18.
//  Copyright © 2018 Area51. All rights reserved.
//

import UIKit

class ItemViewCell: UITableViewCell {

    @IBOutlet weak var textoLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
