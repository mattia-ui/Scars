//
//  Lingua.swift
//  Scar
//
//  Created by Antonio Cimino on 22/06/2020.
//  Copyright © 2020 Mattia Cardone. All rights reserved.
//

import UIKit
import SQLite3


class Lingua: UIViewController {
    
    @IBOutlet weak var inglese: UIButton!
    @IBOutlet weak var italiano: UIButton!
    @IBOutlet weak var ill: UIImageView!
    
    func traslate(view: UIView, aCircleTime: Double, to: CGFloat) {
           print(view.frame.origin.x)
           UIView.animate(withDuration: aCircleTime, animations: {
               () -> Void in view.transform = CGAffineTransform(translationX: 0, y: to)
           })
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
               
        self.navigationController?.view.semanticContentAttribute = .forceLeftToRight
        
        var l = ""
        while(sqlite3_step(stmt) == SQLITE_ROW){
            l = String(cString: sqlite3_column_text(stmt, 1))
        }
        
        var text:[String] = []
        if(l == "eng"){
            inglese.isSelected = false
            italiano.isSelected = true
            text = ENG.lingua
        } else {
            inglese.isSelected = true
            italiano.isSelected = false
            text = ITA.lingua
        }
        inglese.setTitle(text[0], for: .normal)
        italiano.setTitle(text[1], for: .normal)
        
    }
    
    @IBAction func impInglese(_ sender: Any) {
        inglese.isSelected = false
        italiano.isSelected = true
        //Si connette al DB
        var db: OpaquePointer?
        let fileURL = try!
        FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false).appendingPathComponent("Database.sqlite")
        if sqlite3_open(fileURL.path, &db) != SQLITE_OK {
            print("error opening database")
        }
        
        //Update Valore
        var stmt: OpaquePointer?
        var queryString = "UPDATE Lingua SET lingua = 'eng'"
        sqlite3_prepare(db, queryString, -1, &stmt, nil)
        sqlite3_step(stmt)
        print("Saved successfully")
    }
    
    @IBAction func impItaliano(_ sender: Any) {
        inglese.isSelected = true
        italiano.isSelected = false
        //Si connette al DB
        var db: OpaquePointer?
        let fileURL = try!
        FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false).appendingPathComponent("Database.sqlite")
        if sqlite3_open(fileURL.path, &db) != SQLITE_OK {
            print("error opening database")
        }
        
        //Update Valore
        var stmt: OpaquePointer?
        var queryString = "UPDATE Lingua SET lingua = 'ita'"
        sqlite3_prepare(db, queryString, -1, &stmt, nil)
        sqlite3_step(stmt)
        print("Saved successfully")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
viewDidLoad()
        if(view.frame.height == 667){
            traslate(view: ill, aCircleTime: 0, to: -74)
        } else if(view.frame.height == 896){
            traslate(view: ill, aCircleTime: 0, to: -16)

        } else if(view.frame.height == 812){
//            traslate(view: ill, aCircleTime: 0, to: -20)
            
        }
        
        
    }
    
}
