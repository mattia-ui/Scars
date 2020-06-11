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
        overrideUserInterfaceStyle = .light
        nex.isEnabled = false

        var boldText = "Which of these shapes represents "
        var attributedString = NSMutableAttributedString(string:boldText)

        var normalText = "your deepest being?"
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
    
    
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var square: UIButton!
    @IBOutlet weak var circle: UIButton!
    @IBOutlet weak var triangle: UIButton!
    @IBOutlet weak var rect: UIButton!
    @IBOutlet weak var zigZag: UIButton!
    @IBOutlet weak var nex: UIButton!
    
    static var shape1: String!
    
    @IBOutlet weak var vertical: UIStackView!
    @IBOutlet weak var h1: UIStackView!
    @IBOutlet weak var h2: UIStackView!
    @IBOutlet weak var h3: UIStackView!
    @IBOutlet weak var h4: UIStackView!
    @IBOutlet weak var h5: UIStackView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
        if(view.frame.width == 414){
//            h1.spacing = 33
//            h2.spacing = 26
//            h3.spacing = 29
//            h4.spacing = 32
//            h5.spacing = 23
        } else if(view.frame.width == 375){
            h1.spacing = 23
            h2.spacing = 16
            h3.spacing = 19
            h4.spacing = 22
            h5.spacing = 13
        }
        if(view.frame.height == 812){
            vertical.spacing = 15
        }else if(view.frame.height == 667){
            vertical.spacing = 8
        }
    }
    
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
