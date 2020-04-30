//
//  ViewController.swift
//  Scar
//
//  Created by Antonio Cimino on 30/04/2020.
//  Copyright © 2020 Antonio Cimino. All rights reserved.
//

import UIKit
import CloudKit

class ChoosePalette: UIViewController  {
   
    override func viewDidLoad() {}

    @IBOutlet weak var cool: UIButton!
    @IBOutlet weak var warm: UIButton!
    @IBOutlet weak var neutral: UIButton!

    static var color: String!
    
    @IBAction func chooseCool(_ sender: UIButton) {
        if sender.isSelected {
            cool.isSelected = false
        } else {
            cool.isSelected = true
            warm.isSelected = false
            neutral.isSelected = false
            ChoosePalette.color = "cool"
        }
    }
    
    @IBAction func chooseWarm(_ sender: UIButton) {
        if sender.isSelected {
            warm.isSelected = false
        } else {
            cool.isSelected = false
            warm.isSelected = true
            neutral.isSelected = false
            ChoosePalette.color = "warm"
        }
    }

    @IBAction func chooseNeutral(_ sender: UIButton) {
        if sender.isSelected {
             neutral.isSelected = false
        } else {
            cool.isSelected = false
            warm.isSelected = false
            neutral.isSelected = true
            ChoosePalette.color = "neutral"
        }
    }
}
