//
//  SecretCollection.swift
//  Scar
//
//  Created by Mattia Cardone on 02/05/2020.
//  Copyright © 2020 Mattia Cardone. All rights reserved.
//

import UIKit

class Schermata2: UIViewController {
    
    static var insights: [String] = ["","","","",""]
    
    @IBOutlet weak var b1: UIButton!
    @IBOutlet weak var b2: UIButton!
    @IBOutlet weak var b3: UIButton!
    @IBOutlet weak var b4: UIButton!
    @IBOutlet weak var b5: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        b1.setTitle(Schermata2.insights[0], for: .normal)
        b2.setTitle(Schermata2.insights[1], for: .normal)
        b3.setTitle(Schermata2.insights[2], for: .normal)
        b4.setTitle(Schermata2.insights[3], for: .normal)
        b5.setTitle(Schermata2.insights[4], for: .normal)
    }
}
