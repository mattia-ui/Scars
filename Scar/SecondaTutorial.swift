//
//  SecondaTutorial.swift
//  Scar
//
//  Created by Silvio Cresci on 05/05/2020.
//  Copyright © 2020 Mattia Cardone. All rights reserved.
//

import Foundation
import UIKit

class SecondaTutorial : UIViewController {
    
    @IBOutlet weak var PrimaLabel: UILabel!
    @IBOutlet weak var SecondaLabel: UILabel!
    @IBOutlet weak var TerzaLabel: UILabel!
    @IBOutlet weak var TiziaViola: UIImageView!
    @IBOutlet weak var tab: UIImageView!
    @IBOutlet weak var TiziaBionda: UIImageView!
    @IBOutlet weak var button: UIButton!
    
    var cont = 0
    
    override func viewDidLoad() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.handleTap))
               view.addGestureRecognizer(tap)
    }
    
    @objc func handleTap(){
        if(cont != 2){
            cont += 1
            change()
        }
    }
    
    func change(){
        if(cont == 1){
            UIView.animate(withDuration: 0.1){
                self.PrimaLabel.alpha = 0
                self.SecondaLabel.alpha = 0
                self.TerzaLabel.alpha = 0
            }
            PrimaLabel.text = "#skinsugi"
            SecondaLabel.text = "will take care of your story"
            TerzaLabel.text = "Find out how to create your unique masterpiece."
            
            UIView.animate(withDuration: 0.1){
            self.PrimaLabel.alpha = 1
            self.SecondaLabel.alpha = 1
            self.TerzaLabel.alpha = 1
            }
        }
        else if(cont == 2){
            UIView.animate(withDuration: 0.1){
                self.PrimaLabel.alpha = 0
                self.SecondaLabel.alpha = 0
                self.TerzaLabel.alpha = 0
            }
            TiziaViola.isHidden = true
            tab.isHidden = true
            TiziaBionda.isHidden = false
            button.isHidden = false
            PrimaLabel.text = "Time to explore"
            SecondaLabel.text = "Activities and Insights"
            TerzaLabel.text = "We also provided a lot of interesting tips and inspirational contents for you!"
            UIView.animate(withDuration: 0.1){
                self.PrimaLabel.alpha = 1
                self.SecondaLabel.alpha = 1
                self.TerzaLabel.alpha = 1
            }
        }
    }
    
}
