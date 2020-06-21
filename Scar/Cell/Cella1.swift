//
//  Cella1.swift
//  Scar
//
//  Created by Silvio Cresci on 07/05/2020.
//  Copyright © 2020 Mattia Cardone. All rights reserved.
//

import Foundation
import UIKit

class Cella1: UITableViewCell{
    
    @IBOutlet weak var Hi: UILabel!
    @IBOutlet weak var frase: UILabel!
   
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
