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

        let normalText = "do you dress more?"
        let attrs = [NSAttributedString.Key.font : UIFont(name: "Poppins-Medium", size: 20)]
        let normalString = NSMutableAttributedString(string:normalText, attributes:attrs as [NSAttributedString.Key : Any])

               attributedString.append(normalString)
               
               label.attributedText = attributedString
    }
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var cool: UIButton!
    @IBOutlet weak var warm: UIButton!
    @IBOutlet weak var neutral: UIButton!
    @IBOutlet weak var cold: UIImageView!
    @IBOutlet weak var warmt: UIImageView!
    @IBOutlet weak var mammt: UIImageView!
    
    
    @IBOutlet weak var nex: UIButton!
    @IBOutlet weak var question: UILabel!
    static var color: String!
    
    func traslate(view: UIView, aCircleTime: Double, to: CGFloat) {
        print(view.frame.origin.x)
        UIView.animate(withDuration: aCircleTime, animations: {
            () -> Void in view.transform = CGAffineTransform(translationX: 0, y: to)
        })
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: animated)

                if(view.frame.height == 812){
                }else if(view.frame.height == 667){
                    traslate(view: question, aCircleTime: 0, to: -22)
                    traslate(view: label, aCircleTime: 0, to: -25)
                    traslate(view: nex, aCircleTime: 0, to: -91)
                    traslate(view: cool, aCircleTime: 0, to: -25)
                    traslate(view: warm, aCircleTime: 0, to: -25)
                    traslate(view: neutral, aCircleTime: 0, to: -25)
                    traslate(view: cold, aCircleTime: 0, to: -25)
                    traslate(view: warmt, aCircleTime: 0, to: -25)
                    traslate(view: mammt, aCircleTime: 0, to: -25)
                }else if(view.frame.height == 736){
                    traslate(view: question, aCircleTime: 0, to: -36)
                    traslate(view: label, aCircleTime: 0, to: -43)
                    traslate(view: nex, aCircleTime: 0, to: -91)
                    traslate(view: cool, aCircleTime: 0, to: -42)
                    traslate(view: warm, aCircleTime: 0, to: -42)
                    traslate(view: neutral, aCircleTime: 0, to: -42)
                    traslate(view: cold, aCircleTime: 0, to: -42)
                    traslate(view: warmt, aCircleTime: 0, to: -42)
                    traslate(view: mammt, aCircleTime: 0, to: -42)
        }
    }
    
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
