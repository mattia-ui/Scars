//
//  ViewControllerInitial.swift
//  Scar
//
//  Created by Mattia Cardone on 05/05/2020.
//  Copyright © 2020 Mattia Cardone. All rights reserved.
//

import UIKit
import SQLite3

class ViewControllerInitial: UIViewController {

    var id1: Int!
    
    @IBOutlet weak var cardImage: UIImageView!
    @IBOutlet weak var cardLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func done(_ sender: Any) {
        var db: OpaquePointer?

        //Si connette al DB
        let fileURL = try!
        FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false).appendingPathComponent("Database.sqlite")
        if sqlite3_open(fileURL.path, &db) != SQLITE_OK {
            print("error opening database")
        }
            
        //Update Valore
        var stmt: OpaquePointer?
        var attivita = ""
        switch id1 {
            case 0: attivita = "c1"
            case 1: attivita = "c2"
            case 2: attivita = "c3"
            case 3: attivita = "c4"
            default: attivita = "c5"
        }
        let queryString = "UPDATE InfoSchermata1 SET \(attivita) = 'checked';"
        sqlite3_prepare(db, queryString, -1, &stmt, nil)
        sqlite3_step(stmt)
        print("Saved successfully")
        
        let secondVC = storyboard?.instantiateViewController(withIdentifier: "collectionInitial")  as! Schermata1
        self.navigationController?.pushViewController(secondVC, animated: true)
        
    }
    
}
