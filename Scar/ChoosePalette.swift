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
   
    override func viewDidLoad() {
        overrideUserInterfaceStyle = .light
        nex.isEnabled = false
        
        let boldText = "With which of these color palettes\n"
        let attributedString = NSMutableAttributedString(string:boldText)

        let normalText = "do you dress more??"
        let attrs = [NSAttributedString.Key.font : UIFont(name: "CeraPro-Medium", size: 22)]
        let normalString = NSMutableAttributedString(string:normalText, attributes:attrs as [NSAttributedString.Key : Any])

               attributedString.append(normalString)
               
               label.attributedText = attributedString
    }
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var cool: UIButton!
    @IBOutlet weak var warm: UIButton!
    @IBOutlet weak var neutral: UIButton!
    @IBOutlet weak var nex: UIButton!
    static var color: String!
    
    @IBAction func chooseCool(_ sender: UIButton) {
        if sender.isSelected {
            cool.isSelected = false
            nex.isEnabled = false
        } else {
            cool.isSelected = true
            warm.isSelected = false
            neutral.isSelected = false
            nex.isEnabled = true
            ChoosePalette.color = "cool"
        }
    }
    
    @IBAction func chooseWarm(_ sender: UIButton) {
        if sender.isSelected {
            warm.isSelected = false
            nex.isEnabled = false
        } else {
            cool.isSelected = false
            warm.isSelected = true
            neutral.isSelected = false
            nex.isEnabled = true
            ChoosePalette.color = "warm"
        }
    }

    @IBAction func chooseNeutral(_ sender: UIButton) {
        if sender.isSelected {
            neutral.isSelected = false
            nex.isEnabled = false
        } else {
            cool.isSelected = false
            warm.isSelected = false
            neutral.isSelected = true
            nex.isEnabled = true
            ChoosePalette.color = "neutral"
        }
    }
}
