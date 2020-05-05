//
//  ViewControllerInitial.swift
//  Scar
//
//  Created by Mattia Cardone on 05/05/2020.
//  Copyright © 2020 Mattia Cardone. All rights reserved.
//

import UIKit
class ViewControllerInitial: UIViewController {

    var id1: Int!
    
    @IBOutlet weak var cardImage: UIImageView!
    @IBOutlet weak var cardLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func done(_ sender: Any) {
        
        let secondVC = storyboard?.instantiateViewController(withIdentifier: "collectionInitial")  as! Schermata1
//        let cell = CollectionViewCell()
//        cell.cardsImage.image = UIImage(named: "checked")
        secondVC.allImages[id1] = "checked"

        self.navigationController?.pushViewController(secondVC, animated: true)
        
    }
    
}
