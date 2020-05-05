//
//  SecretCollection.swift
//  Scar
//
//  Created by Mattia Cardone on 02/05/2020.
//  Copyright © 2020 Mattia Cardone. All rights reserved.
//

import UIKit
import SQLite3

class Schermata3: UIViewController {
    
    var m = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var db: OpaquePointer?
        var stmt: OpaquePointer?

        //Si connette al DB
        let fileURL = try!
        FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false).appendingPathComponent("Database.sqlite")
        if sqlite3_open(fileURL.path, &db) != SQLITE_OK {
            print("error opening database")
        }

        
        //Recupera Valore
        var d = ""
        var queryString = "SELECT * FROM Collage"
        if sqlite3_prepare(db, queryString, -1, &stmt, nil) != SQLITE_OK{
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error preparing insert: \(errmsg)")
            return
        }
        while(sqlite3_step(stmt) == SQLITE_ROW && m < 1){
            d = String(cString: sqlite3_column_text(stmt, 1))
            m = m + 1
            print(d)
        }
        
        
        //Confronta Valore
        if(d == "si"){
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let secondVC = storyboard.instantiateViewController(withIdentifier: "stepCollage")  as! StepCollage
            self.navigationController?.pushViewController(secondVC, animated: true)
        } else {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let secondVC = storyboard.instantiateViewController(withIdentifier: "postCollage")  as! PostCollage
            self.navigationController?.pushViewController(secondVC, animated: true)
        }
    }
}
