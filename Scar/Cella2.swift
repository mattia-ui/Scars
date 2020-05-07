//
//  Cella2.swift
//  Scar
//
//  Created by Silvio Cresci on 07/05/2020.
//  Copyright © 2020 Mattia Cardone. All rights reserved.
//

import Foundation
import UIKit

class Cella2: UITableViewCell{
    
    @IBOutlet weak var button: UIButton!
    @IBAction func buttonPressed(_ sender: UIButton) {
        if(button.isSelected){
            button.isSelected = false
        }else{
            button.isSelected = true
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
