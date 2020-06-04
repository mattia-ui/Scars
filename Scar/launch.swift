//
//  launch.swift
//  Scar
//
//  Created by Silvio Cresci on 04/06/2020.
//  Copyright © 2020 Mattia Cardone. All rights reserved.
//

import UIKit

class launch: UIViewController{
    
    @IBOutlet weak var img: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        img.loadGif(name: "TimelineAnimated")
    }
}
