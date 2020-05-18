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
        
       var boldText = "Touch "
         var attrs = [NSAttributedString.Key.font : UIFont(name: "CeraPro-Medium", size: 22)]
        let attributedString = NSMutableAttributedString(string:boldText, attributes:attrs as [NSAttributedString.Key : Any])

       let  normalText = "your indelible sign, which of\n these textures "
        let normalString = NSMutableAttributedString(string:normalText)

        attributedString.append(normalString)
        
         boldText = "reminds you of it? "
         attrs = [NSAttributedString.Key.font : UIFont(name: "CeraPro-Medium", size: 22)]
        
        let attributedString2 = NSMutableAttributedString(string:boldText, attributes:attrs as [NSAttributedString.Key : Any])
        
        attributedString.append(attributedString2)
               
               label.attributedText = attributedString
        
        
    }

    @IBOutlet weak var sea: UIButton!
    @IBOutlet weak var wood: UIButton!
    @IBOutlet weak var texile: UIButton!
    @IBOutlet weak var cratere: UIButton!
    @IBOutlet weak var marble: UIButton!
    @IBOutlet weak var nex: UIButton!
    
    @IBOutlet weak var label: UILabel!
    static var texture1: String!
    
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var results: UILabel!
    @IBOutlet weak var yes: UIButton!
    @IBOutlet weak var no: UIButton!
    
    @IBAction func pressed(_ sender: UIButton) {
       let blurEffect = UIBlurEffect(style: UIBlurEffect.Style.light)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = view1.bounds
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        blurEffectView.alpha = 1
        view1.addSubview(blurEffectView)
        
        self.tabBarController?.tabBar.isHidden = true
       

//        label1.isHidden = false
//        label2.isHidden = false
//        results.isHidden = false
//        yes.isHidden = false
//        no.isHidden = false
        
        view2.isHidden = false
        
//        let blurEffect3 = UIBlurEffect(style: UIBlurEffect.Style.light)
//                let blurEffectView3 = UIVisualEffectView(effect: blurEffect3)
//                blurEffectView3.frame = view.bounds
//                blurEffectView3.autoresizingMask = [.flexibleWidth, .flexibleHeight]
//                blurEffectView3.alpha = 0
//                label1.addSubview(blurEffectView3)
    }
    
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
