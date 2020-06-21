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
   
    var text: [String] = []
    var shape: [String] = []
    
    override func viewDidLoad() {
        overrideUserInterfaceStyle = .light
        nex.isEnabled = false
        
        text = ENG.textOnChooseShape
        shape = ENG.Shape

        var boldText = text[0]
        var attributedString = NSMutableAttributedString(string:boldText)

        var normalText = text[1]
        var attrs = [NSAttributedString.Key.font : UIFont(name: "Poppins-SemiBold", size: 20)]
        var normalString = NSMutableAttributedString(string:normalText, attributes:attrs as [NSAttributedString.Key : Any])

        attributedString.append(normalString)
        
        label.attributedText = attributedString
        
         boldText = text[2]
         attrs = [NSAttributedString.Key.font : UIFont(name: "Poppins-Medium", size: 20)]
        attributedString = NSMutableAttributedString(string:boldText, attributes:attrs as [NSAttributedString.Key : Any])

         normalText = text[3]
         normalString = NSMutableAttributedString(string:normalText)

        attributedString.append(normalString)
        
        square.setAttributedTitle(attributedString, for: .normal)
        
         boldText = text[4]
         attrs = [NSAttributedString.Key.font : UIFont(name: "Poppins-Medium", size: 20)]
        attributedString = NSMutableAttributedString(string:boldText, attributes:attrs as [NSAttributedString.Key : Any])

         normalText = text[5]
         normalString = NSMutableAttributedString(string:normalText)

        attributedString.append(normalString)
        
        rect.setAttributedTitle(attributedString, for: .normal)
        
         boldText = text[6]
         attrs = [NSAttributedString.Key.font : UIFont(name: "Poppins-Medium", size: 20)]
        attributedString = NSMutableAttributedString(string:boldText, attributes:attrs as [NSAttributedString.Key : Any])

         normalText = text[7]
         normalString = NSMutableAttributedString(string:normalText)

        attributedString.append(normalString)
        
        triangle.setAttributedTitle(attributedString, for: .normal)
        
         boldText = text[8]
         attrs = [NSAttributedString.Key.font : UIFont(name: "Poppins-Medium", size: 20)]
        attributedString = NSMutableAttributedString(string:boldText, attributes:attrs as [NSAttributedString.Key : Any])

         normalText = text[9]
         normalString = NSMutableAttributedString(string:normalText)

        attributedString.append(normalString)
        
        circle.setAttributedTitle(attributedString, for: .normal)
        
         boldText = text[10]
         attrs = [NSAttributedString.Key.font : UIFont(name: "Poppins-Medium", size: 20)]
        attributedString = NSMutableAttributedString(string:boldText, attributes:attrs as [NSAttributedString.Key : Any])

         normalText = text[11]
         normalString = NSMutableAttributedString(string:normalText)

        attributedString.append(normalString)
        
        zigZag.setAttributedTitle(attributedString, for: .normal)
    }
    
    
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var question: UILabel!
    
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
            traslate(view: question, aCircleTime: 0, to: -100)
            traslate(view: label, aCircleTime: 0, to: -100)
            traslate(view: vertical, aCircleTime: 0, to: -100)
            traslate(view: nex, aCircleTime: 0, to: -120)
        }else if(view.frame.height == 736){
            vertical.spacing = 10
            traslate(view: question, aCircleTime: 0, to: -100)
            traslate(view: label, aCircleTime: 0, to: -100)
            traslate(view: vertical, aCircleTime: 0, to: -100)
            traslate(view: nex, aCircleTime: 0, to: -120)
        }
    }
    
    func traslate(view: UIView, aCircleTime: Double, to: CGFloat) {
        print(view.frame.origin.x)
        UIView.animate(withDuration: aCircleTime, animations: {
            () -> Void in view.transform = CGAffineTransform(translationX: 0, y: to)
        })
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
            ChooseShape.shape1 = shape[0]
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
            ChooseShape.shape1 = shape[3]
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
            ChooseShape.shape1 = shape[2]
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
            ChooseShape.shape1 = shape[1]
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
            ChooseShape.shape1 = shape[4]
        }
    }
}
