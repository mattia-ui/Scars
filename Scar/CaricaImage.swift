//
//  CaricaImage.swift
//  Scar
//
//  Created by Mattia Cardone on 02/05/2020.
//  Copyright © 2020 Mattia Cardone. All rights reserved.
//

import UIKit

class CaricaImage: UIViewController {

 var id: Int!
        @IBOutlet weak var testo: UILabel!
        @IBOutlet weak var image: UIImageView!
        
        override func viewDidLoad() {
            super.viewDidLoad()
            image.image = SecretCollection.allImages?[id]
            testo.text = SecretCollection.allDescr?[id]
        }
    }
