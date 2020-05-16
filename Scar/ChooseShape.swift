//
//  ViewController.swift
//  Scar
//
//  Created by Antonio Cimino on 30/04/2020.
//  Copyright © 2020 Antonio Cimino. All rights reserved.
//

import UIKit
import CloudKit

class ChooseShape: UIViewController  {
   
    override func viewDidLoad() {
        nex.isEnabled = false
        
        var boldText = "Which of these shapes represents "
        var attributedString = NSMutableAttributedString(string:boldText)

        var normalText = "your deepest being?"
        var attrs = [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 22)]
        var normalString = NSMutableAttributedString(string:normalText, attributes:attrs)

        attributedString.append(normalString)
        
        label.attributedText = attributedString
        
         boldText = "Square \n"
         attrs = [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 22)]
         attributedString = NSMutableAttributedString(string:boldText, attributes:attrs)

         normalText = "careful - analytic"
         normalString = NSMutableAttributedString(string:normalText)

        attributedString.append(normalString)
        
        square.setAttributedTitle(attributedString, for: .normal)
        
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: animated)

    }
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var square: UIButton!
    @IBOutlet weak var circle: UIButton!
    @IBOutlet weak var triangle: UIButton!
    @IBOutlet weak var rect: UIButton!
    @IBOutlet weak var zigZag: UIButton!
    @IBOutlet weak var nex: UIButton!
    
    static var shape1: String!
    
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
            ChooseShape.shape1 = "square"
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
            ChooseShape.shape1 = "circle"
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
            ChooseShape.shape1 = "triangle"
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
            ChooseShape.shape1 = "rect"
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
            ChooseShape.shape1 = "zigzag"
        }
    }
}
