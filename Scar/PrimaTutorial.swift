//
//  PrimaTutorial.swift
//  Scar
//
//  Created by Silvio Cresci on 05/05/2020.
//  Copyright © 2020 Mattia Cardone. All rights reserved.
//

import Foundation
import UIKit

class PrimaTutorial : UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if UserDefaults.standard.bool(forKey: "LaunchedBefore") {
            print("Dio")
        self.performSegue(withIdentifier: "notFirst", sender: self)
        }else{
            print("Cane")
        }
    }
    
}
