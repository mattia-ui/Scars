//
//  Settings.swift
//  Scar
//
//  Created by Antonio Cimino on 22/06/2020.
//  Copyright © 2020 Mattia Cardone. All rights reserved.
//

import UIKit

class Settins: UIViewController {
    
    @IBOutlet weak var lingua: UIButton!
    @IBOutlet weak var about: UIButton!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewDidLoad() {
        var text:[String] = ENG.textOnSettings
        lingua.setTitle(text[0], for: .normal)
        about.setTitle(text[1], for: .normal)
    }
    
    @IBAction func lingua(_ sender: Any) {
    }
    
    @IBAction func aboutUS(_ sender: Any) {
    }
}
