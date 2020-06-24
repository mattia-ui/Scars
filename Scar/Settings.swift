//
//  Settings.swift
//  Scar
//
//  Created by Antonio Cimino on 22/06/2020.
//  Copyright © 2020 Mattia Cardone. All rights reserved.
//

import UIKit
import SQLite3

class Settins: UIViewController {
    
    @IBOutlet weak var lingua: UIButton!
    @IBOutlet weak var about: UIButton!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewDidLoad() {
        var db: OpaquePointer?

        //Si connette al DB
        let fileURL = try!
        FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false).appendingPathComponent("Database.sqlite")
        if sqlite3_open(fileURL.path, &db) != SQLITE_OK {
            print("error opening database")
        }
                                    
        //Recupera Valore
        var stmt: OpaquePointer?
        var queryString = "SELECT * FROM Lingua"
        if sqlite3_prepare(db, queryString, -1, &stmt, nil) != SQLITE_OK{
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error preparing insert: \(errmsg)")
            return
        }
                     
        var l = ""
        while(sqlite3_step(stmt) == SQLITE_ROW){
            l = String(cString: sqlite3_column_text(stmt, 1))
        }
              
        var text:[String] = ENG.textOnSettings
        if(l == "eng"){
            text = ENG.textOnSettings
        } else {
            text = ITA.textOnSettings
        }
        lingua.setTitle(text[0], for: .normal)
        about.setTitle(text[1], for: .normal)
    }
    
    @IBAction func lingua(_ sender: Any) {
    }
    
    @IBAction func aboutUS(_ sender: Any) {
    }
}
