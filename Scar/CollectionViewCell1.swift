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
    var indiceCard : Int = 0
    var db: OpaquePointer?
    var stmt: OpaquePointer?

    
    @IBAction func checked(_ sender: UIButton) {
        
        //Si connette al DB
        let fileURL = try!
        FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false).appendingPathComponent("Database.sqlite")
        if sqlite3_open(fileURL.path, &db) != SQLITE_OK {
            print("error opening database")
        }
        
        if(sender.isSelected == true){
            
            sender.isSelected = false
            indiceCard -= 1
            //Update Valore
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
            let queryString = "UPDATE InfoSchermata1 SET \(att) = 'unchecked';"
            sqlite3_prepare(db, queryString, -1, &stmt, nil)
            sqlite3_step(stmt)
            print("Saved successfully")
        } else {
            
            sender.isSelected = true
            indiceCard += 1
            //Update Valore
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
        
        //Recupera Valore
        let queryString = "SELECT * FROM InfoSchermata1"
        if sqlite3_prepare(db, queryString, -1, &stmt, nil) != SQLITE_OK{
        let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error preparing insert: \(errmsg)")
            return
        }
        
        while(sqlite3_step(stmt) == SQLITE_ROW){
            Schermata1.allImages[0] = String(cString: sqlite3_column_text(stmt, 1))
            Schermata1.allImages[1] = String(cString: sqlite3_column_text(stmt, 2))
            Schermata1.allImages[2] = String(cString: sqlite3_column_text(stmt, 3))
            Schermata1.allImages[3] = String(cString: sqlite3_column_text(stmt, 4))
            Schermata1.allImages[4] = String(cString: sqlite3_column_text(stmt, 5))
            Schermata1.allImages[5] = String(cString: sqlite3_column_text(stmt, 6))
            Schermata1.allImages[6] = String(cString: sqlite3_column_text(stmt, 7))
            Schermata1.allImages[7] = String(cString: sqlite3_column_text(stmt, 8))
            Schermata1.allImages[8] = String(cString: sqlite3_column_text(stmt, 9))
        }
        
        let name = Notification.Name(rawValue: NotificationKey2)
        NotificationCenter.default.post(name: name, object: nil)
  
    }
}
