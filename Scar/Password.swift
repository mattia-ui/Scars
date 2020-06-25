//
//  SecretCollection.swift
//  Scar
//
//  Created by Mattia Cardone on 02/05/2020.
//  Copyright © 2020 Mattia Cardone. All rights reserved.
//

import UIKit
import CloudKit

class Password: UIViewController {
    
    @IBOutlet weak var pass: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        overrideUserInterfaceStyle = .light

    }
    
    override func viewWillAppear(_ animated: Bool) {
           super.viewWillAppear(animated)
           self.navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    @IBAction func tryPass(_ sender: Any) {
        
        if(pass.text == "uragani"){
            SecretCollection.allDescr = []
            SecretCollection.allImages = []
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let secondVC = storyboard.instantiateViewController(withIdentifier: "collection")  as! SecretCollection
        self.navigationController?.pushViewController(secondVC, animated: true)
        } else {
            pass.text =  ""
        }
    }
    
    
}
