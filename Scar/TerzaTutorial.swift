//
//  TerzaTutorial.swift
//  Scar
//
//  Created by Silvio Cresci on 05/05/2020.
//  Copyright © 2020 Mattia Cardone. All rights reserved.
//

import Foundation
import UIKit

class TerzaTutorial : UIViewController {
    override func viewDidLoad() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.handleTap))
               view.addGestureRecognizer(tap)
    }
    
    @objc func handleTap(){
        performSegue(withIdentifier: "annanz2", sender: Any?.self)
    }
}
