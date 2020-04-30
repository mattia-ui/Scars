//
//  ViewController.swift
//  Scar
//
//  Created by Antonio Cimino on 30/04/2020.
//  Copyright © 2020 Antonio Cimino. All rights reserved.
//

import UIKit
import CloudKit

class ChooseTexture: UIViewController  {
   
    override func viewDidLoad() {
        nex.isEnabled = false
    }

    @IBOutlet weak var sea: UIButton!
    @IBOutlet weak var wood: UIButton!
    @IBOutlet weak var texile: UIButton!
    @IBOutlet weak var cratere: UIButton!
    @IBOutlet weak var marble: UIButton!
    @IBOutlet weak var nex: UIButton!
    
    static var texture1: String!
    
    @IBAction func chooseSea(_ sender: UIButton) {
        if sender.isSelected {
            sea.isSelected = false
            nex.isEnabled = false
        } else {
            sea.isSelected = true
            wood.isSelected = false
            texile.isSelected = false
            cratere.isSelected = false
            marble.isSelected = false
            nex.isEnabled = true
            ChooseTexture.texture1 = "sea"
        }
    }
    
    @IBAction func chooseWood(_ sender: UIButton) {
        if sender.isSelected {
            wood.isSelected = false
            nex.isEnabled = false
        } else {
            sea.isSelected = false
            wood.isSelected = true
            texile.isSelected = false
            cratere.isSelected = false
            marble.isSelected = false
            nex.isEnabled = true
            ChooseTexture.texture1 = "wood"
        }
    }
    
    @IBAction func chooseTexile(_ sender: UIButton) {
        if sender.isSelected {
            texile.isSelected = false
            nex.isEnabled = false
        } else {
            sea.isSelected = false
            wood.isSelected = false
            texile.isSelected = true
            cratere.isSelected = false
            marble.isSelected = false
            nex.isEnabled = true
            ChooseTexture.texture1 = "texile"
        }
    }
    
    @IBAction func chooseCratere(_ sender: UIButton) {
        if sender.isSelected {
            cratere.isSelected = false
            nex.isEnabled = false
        } else {
            sea.isSelected = false
            wood.isSelected = false
            texile.isSelected = false
            cratere.isSelected = true
            marble.isSelected = false
            nex.isEnabled = true
            ChooseTexture.texture1 = "cratere"
        }
    }
    
    @IBAction func chooseMarble(_ sender: UIButton) {
        if sender.isSelected {
            marble.isSelected = false
            nex.isEnabled = false
        } else {
            sea.isSelected = false
            wood.isSelected = false
            texile.isSelected = false
            cratere.isSelected = false
            marble.isSelected = true
            nex.isEnabled = true
            ChooseTexture.texture1 = "marble"
        }
    }
}
