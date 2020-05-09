//
//  CollectionViewCell1.swift
//  Scar
//
//  Created by Mattia Cardone on 05/05/2020.
//  Copyright © 2020 Mattia Cardone. All rights reserved.
//

import UIKit
import SQLite3

class CollectionViewCell1: UICollectionViewCell {
    
    @IBOutlet weak var check: UIButton!
    @IBOutlet weak var cardsImage: UIImageView!
    
    @IBAction func checked(_ sender: UIButton) {
        if(sender.isSelected == true){
            sender.isSelected = false
        } else {
            sender.isSelected = true
        }
        
        var db: OpaquePointer?

            //Si connette al DB
            let fileURL = try!
            FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false).appendingPathComponent("Database.sqlite")
            if sqlite3_open(fileURL.path, &db) != SQLITE_OK {
                print("error opening database")
            }
                  
            //Update Valore
            var stmt: OpaquePointer?
            var att = ""
            switch sender.tag {
                case 0: att = "c1"
                case 1: att = "c2"
                case 2: att = "c3"
                case 3: att = "c4"
                case 4: att = "c5"
                case 5: att = "c6"
                case 6: att = "c7"
                case 7: att = "c8"
                default: att = "c9"
            }
            let queryString = "UPDATE InfoSchermata1 SET \(att) = 'checked';"
            sqlite3_prepare(db, queryString, -1, &stmt, nil)
            sqlite3_step(stmt)
            print("Saved successfully")
        }
}
