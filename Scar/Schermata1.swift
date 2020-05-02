//
//  SecretCollection.swift
//  Scar
//
//  Created by Mattia Cardone on 02/05/2020.
//  Copyright © 2020 Mattia Cardone. All rights reserved.
//

import UIKit
import CloudKit

class Schermata1: UIViewController {
    
    var i = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func secret(_ sender: Any) {
        
        if(i == 15){
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let secondVC = storyboard.instantiateViewController(withIdentifier: "pass")  as! Password
        self.navigationController?.pushViewController(secondVC, animated: true)
        } else {
            i = i + 1
        }
    }
    
    
}

