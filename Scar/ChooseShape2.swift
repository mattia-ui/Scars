//
//  ViewController.swift
//  Scar
//
//  Created by Antonio Cimino on 30/04/2020.
//  Copyright © 2020 Antonio Cimino. All rights reserved.
//

import UIKit
import CloudKit

class ChooseShape2: UIViewController  {
   
    override func viewDidLoad() {
        nex.isEnabled = false
        overrideUserInterfaceStyle = .light
        
        var boldText = "Which of these shapes represents "
        var attributedString = NSMutableAttributedString(string:boldText)

        var normalText = "the way you would like to be?"
        var attrs = [NSAttributedString.Key.font : UIFont(name: "Nexa Bold", size: 22)]
        var normalString = NSMutableAttributedString(string:normalText, attributes:attrs as [NSAttributedString.Key : Any])

        attributedString.append(normalString)
        
        label.attributedText = attributedString
        
         boldText = "Square \n"
         attrs = [NSAttributedString.Key.font : UIFont(name: "Nexa Bold", size: 22)]
        attributedString = NSMutableAttributedString(string:boldText, attributes:attrs as [NSAttributedString.Key : Any])

         normalText = "careful - analytic"
         normalString = NSMutableAttributedString(string:normalText)

        attributedString.append(normalString)
        
        square.setAttributedTitle(attributedString, for: .normal)
        
         boldText = "Rectangle \n"
         attrs = [NSAttributedString.Key.font : UIFont(name: "Nexa Bold", size: 22)]
        attributedString = NSMutableAttributedString(string:boldText, attributes:attrs as [NSAttributedString.Key : Any])

         normalText = "curious - confused"
         normalString = NSMutableAttributedString(string:normalText)

        attributedString.append(normalString)
        
        rect.setAttributedTitle(attributedString, for: .normal)
        
         boldText = "Triangle \n"
         attrs = [NSAttributedString.Key.font : UIFont(name: "Nexa Bold", size: 22)]
        attributedString = NSMutableAttributedString(string:boldText, attributes:attrs as [NSAttributedString.Key : Any])

         normalText = "leader - focused"
         normalString = NSMutableAttributedString(string:normalText)

        attributedString.append(normalString)
        
        triangle.setAttributedTitle(attributedString, for: .normal)
        
         boldText = "Circle \n"
         attrs = [NSAttributedString.Key.font : UIFont(name: "Nexa Bold", size: 22)]
        attributedString = NSMutableAttributedString(string:boldText, attributes:attrs as [NSAttributedString.Key : Any])

         normalText = "empathic - sociable"
         normalString = NSMutableAttributedString(string:normalText)

        attributedString.append(normalString)
        
        circle.setAttributedTitle(attributedString, for: .normal)
        
         boldText = "Zig zag \n"
         attrs = [NSAttributedString.Key.font : UIFont(name: "Nexa Bold", size: 22)]
        attributedString = NSMutableAttributedString(string:boldText, attributes:attrs as [NSAttributedString.Key : Any])

         normalText = "creative - aspiring"
         normalString = NSMutableAttributedString(string:normalText)

        attributedString.append(normalString)
        
        zigZag.setAttributedTitle(attributedString, for: .normal)
        
        
        
    }

    @IBOutlet weak var square: UIButton!
    @IBOutlet weak var circle: UIButton!
    @IBOutlet weak var triangle: UIButton!
    @IBOutlet weak var rect: UIButton!
    @IBOutlet weak var zigZag: UIButton!
    @IBOutlet weak var nex: UIButton!
    
    @IBOutlet weak var label: UILabel!
    
    static var shape2: String!
    
    @IBAction func chooseSquare(_ sender: UIButton) {
       if sender.isSelected {
            square.isSelected = false
            nex.isEnabled = false
        } else {
            square.isSelected = true
            circle.isSelected = false
            triangle.isSelected = false
            rect.isSelected = false
            zigZag.isSelected = false
            nex.isEnabled = true
            ChooseShape2.shape2 = "square"
        }
    }
    
    @IBAction func chooseCircle(_ sender: UIButton) {
       if sender.isSelected {
            circle.isSelected = false
            nex.isEnabled = false
        } else {
            square.isSelected = false
            circle.isSelected = true
            triangle.isSelected = false
            rect.isSelected = false
            zigZag.isSelected = false
            nex.isEnabled = true
            ChooseShape2.shape2 = "circle"
        }
    }
    
    @IBAction func chooseTriangle(_ sender: UIButton) {
      if sender.isSelected {
            triangle.isSelected = false
            nex.isEnabled = false
        } else {
            square.isSelected = false
            circle.isSelected = false
            triangle.isSelected = true
            rect.isSelected = false
            zigZag.isSelected = false
            nex.isEnabled = true
            ChooseShape2.shape2 = "triangle"
        }
    }
    
    @IBAction func chooseRect(_ sender: UIButton) {
        if sender.isSelected {
            rect.isSelected = false
            nex.isEnabled = false
        } else {
            square.isSelected = false
            circle.isSelected = false
            triangle.isSelected = false
            rect.isSelected = true
            zigZag.isSelected = false
            nex.isEnabled = true
            ChooseShape2.shape2 = "rect"
        }
    }
    
    @IBAction func chooseZigZag(_ sender: UIButton) {
       if sender.isSelected {
            zigZag.isSelected = false
            nex.isEnabled = false
        } else {
            square.isSelected = false
            circle.isSelected = false
            triangle.isSelected = false
            rect.isSelected = false
            zigZag.isSelected = true
            nex.isEnabled = true
            ChooseShape2.shape2 = "zigzag"
        }
    }
}
