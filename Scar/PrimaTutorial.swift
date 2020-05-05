//
//  PrimaTutorial.swift
//  Scar
//
//  Created by Silvio Cresci on 05/05/2020.
//  Copyright © 2020 Mattia Cardone. All rights reserved.
//

import Foundation
import UIKit
import SQLite3

class PrimaTutorial : UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var db: OpaquePointer?
        
        if UserDefaults.standard.bool(forKey: "LaunchedBefore") {
            self.performSegue(withIdentifier: "notFirst", sender: self)
        }else{
            let dateIstallazione = Date()
            let calendar = Calendar.current
            let components = calendar.dateComponents([.year, .month, .day, .hour, .minute, .second], from: dateIstallazione)
                     
            let month = components.month ?? 0
            let day = components.day ?? 0
            let hour = components.hour ?? 0
            let minute = components.minute ?? 0
                   
            //Si connette al DB
            let fileURL = try!
            FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false).appendingPathComponent("Database.sqlite")
            if sqlite3_open(fileURL.path, &db) != SQLITE_OK {
                print("error opening database")
            }
            
            //Elimina Tabella. Quando Spostiamo le due funzioni successive nel tutorial non serve piu
            if sqlite3_exec(db, "DROP TABLE Collage", nil, nil, nil) != SQLITE_OK {
                let errmsg = String(cString: sqlite3_errmsg(db)!)
                print("error creating table: \(errmsg)")
            }
            
            //Crea Tabella. Per valore che dice se mostrare fakeInsta
            if sqlite3_exec(db, "CREATE TABLE IF NOT EXISTS Collage (id INTEGER PRIMARY KEY AUTOINCREMENT,valore TEXT)", nil, nil, nil) != SQLITE_OK {
                let errmsg = String(cString: sqlite3_errmsg(db)!)
                print("error creating table: \(errmsg)")
             }
             
             //Inserisce Valore. Va nel tutorial
             var stmt: OpaquePointer?
             var queryString = "INSERT INTO Collage(valore) VALUES ('si');"
             sqlite3_prepare(db, queryString, -1, &stmt, nil)
             sqlite3_step(stmt)
             print("Saved successfully")
            
            //Elimina Tabella. Quando Spostiamo le due funzioni successive nel tutorial non serve piu
            if sqlite3_exec(db, "DROP TABLE Date", nil, nil, nil) != SQLITE_OK {
                let errmsg = String(cString: sqlite3_errmsg(db)!)
                print("error creating table: \(errmsg)")
            }
            
            //Crea Tabella. Per valore che dice se mostrare fakeInsta
            if sqlite3_exec(db, "CREATE TABLE IF NOT EXISTS Date (id INTEGER PRIMARY KEY AUTOINCREMENT,mese TEXT, giorno TEXT, ora TEXT, minuti TEXT)", nil, nil, nil) != SQLITE_OK {
                let errmsg = String(cString: sqlite3_errmsg(db)!)
                print("error creating table: \(errmsg)")
             }
             
             //Inserisce Valore. Va nel tutorial
            queryString = "INSERT INTO Date (mese,giorno,ora,minuti) VALUES ('\(String(describing: month))','\(String(describing: day))','\(String(describing: hour))','\(String(describing: minute))');"
             sqlite3_prepare(db, queryString, -1, &stmt, nil)
             sqlite3_step(stmt)
             print("Saved successfully")
            
            //Elimina Tabella. Quando Spostiamo le due funzioni successive nel tutorial non serve piu
            if sqlite3_exec(db, "DROP TABLE InfoSchermata1", nil, nil, nil) != SQLITE_OK {
                let errmsg = String(cString: sqlite3_errmsg(db)!)
                print("error creating table: \(errmsg)")
            }
                      
            //Crea Tabella. Per valore che dice se mostrare le check checcate o no
            if sqlite3_exec(db, "CREATE TABLE IF NOT EXISTS InfoSchermata1 (id INTEGER PRIMARY KEY AUTOINCREMENT,c1 TEXT,c2 TEXT,c3 TEXT,c4 TEXT,c5 TEXT)", nil, nil, nil) != SQLITE_OK {
                let errmsg = String(cString: sqlite3_errmsg(db)!)
                print("error creating table: \(errmsg)")
            }
                       
            //Inserisce Valore. Va nel tutorial
            queryString = "INSERT INTO InfoSchermata1 (c1,c2,c3,c4,c5) VALUES ('unchecked', 'unchecked', 'unchecked', 'unchecked', 'unchecked');"
            sqlite3_prepare(db, queryString, -1, &stmt, nil)
            sqlite3_step(stmt)
            print("Saved successfully")
            
            //Elimina Tabella. Quando Spostiamo le due funzioni successive nel tutorial non serve piu
            if sqlite3_exec(db, "DROP TABLE Insights", nil, nil, nil) != SQLITE_OK {
            let errmsg = String(cString: sqlite3_errmsg(db)!)
                print("error creating table: \(errmsg)")
            }
                      
            //Crea Tabella. Per valore che dice se mostrare fakeInsta
            if sqlite3_exec(db, "CREATE TABLE IF NOT EXISTS Insights (id INTEGER PRIMARY KEY AUTOINCREMENT,b1 TEXT, b2 TEXT, b3 TEXT, b4 TEXT, b5 TEXT)", nil, nil, nil) != SQLITE_OK {
                let errmsg = String(cString: sqlite3_errmsg(db)!)
                print("error creating table: \(errmsg)")
            }
                       
            //Inserisce Valore. Va nel tutorial
            queryString = "INSERT INTO Insights(b1,b2,b3,b4,b5) VALUES ('','','','','');"
            sqlite3_prepare(db, queryString, -1, &stmt, nil)
            sqlite3_step(stmt)
            print("Saved successfully")
        }
    }
    
}
