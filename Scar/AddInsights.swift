//
//  SecretCollection.swift
//  Scar
//
//  Created by Mattia Cardone on 02/05/2020.
//  Copyright © 2020 Mattia Cardone. All rights reserved.
//

import UIKit
import SQLite3

class AddInsights: UIViewController {
    
    @IBOutlet weak var pod: UIButton!
    @IBOutlet weak var well: UIButton!
    @IBOutlet weak var mov: UIButton!
    @IBOutlet weak var art: UIButton!
    @IBOutlet weak var artist: UIButton!
        
    static var j: Int = 0
    var db: OpaquePointer?
    var stmt: OpaquePointer?
    var temp: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        AddInsights.j = 0
        for i in 0...Schermata2.insights.count - 1{
             if(Schermata2.insights[i] == "Podcast"){
                AddInsights.j = AddInsights.j + 1
                pod.isSelected = true
            }
            
            if(Schermata2.insights[i] == "Wellbein"){
                AddInsights.j = AddInsights.j + 1
                well.isSelected = true
            }
            
            if(Schermata2.insights[i] == "Movies"){
                AddInsights.j = AddInsights.j + 1
                mov.isSelected = true
            }
            
            if(Schermata2.insights[i] == "Articols"){
                AddInsights.j = AddInsights.j + 1
                art.isSelected = true
            }
            
            if(Schermata2.insights[i] == "Artist"){
                AddInsights.j = AddInsights.j + 1
                artist.isSelected = true
            }
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        let name = Notification.Name(rawValue: NotificationKey)
        NotificationCenter.default.post(name: name, object: nil)
    }
   
    @IBAction func podcast(_ sender: UIButton) {
        //Si connette al DB
        let fileURL = try!
        FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false).appendingPathComponent("Database.sqlite")
        if sqlite3_open(fileURL.path, &db) != SQLITE_OK {
            print("error opening database")
        }
        
        if sender.isSelected {
            pod.isSelected = false
            for i in 0...Schermata2.insights.count - 1{
                if(Schermata2.insights[i] != "Podcast"){
                    temp.append(Schermata2.insights[i])
                }
            }
            AddInsights.j = AddInsights.j - 1
            Schermata2.insights = temp
            Schermata2.insights.append("")
            
            let queryString = "UPDATE Insights SET b1 = '\(Schermata2.insights[0])', b2 = '\(Schermata2.insights[1])', b3 = '\(Schermata2.insights[2])', b4 = '\(Schermata2.insights[3])', b5 = '\(Schermata2.insights[4])';"
            sqlite3_prepare(db, queryString, -1, &stmt, nil)
            sqlite3_step(stmt)
            print("Saved successfully")
        } else {
            pod.isSelected = true
    
            //Update Valore
            var ins = ""
            switch AddInsights.j {
                case 0: ins = "b1"
                case 1: ins = "b2"
                case 2: ins = "b3"
                case 3: ins = "b4"
                default: ins = "b5"
            }
            let queryString = "UPDATE Insights SET \(ins) = 'Podcast';"
            sqlite3_prepare(db, queryString, -1, &stmt, nil)
            sqlite3_step(stmt)
            print("Saved successfully")
            AddInsights.j = AddInsights.j + 1
        }
    }
    
    @IBAction func wellbein(_ sender: UIButton) {
        //Si connette al DB
        let fileURL = try!
        FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false).appendingPathComponent("Database.sqlite")
        if sqlite3_open(fileURL.path, &db) != SQLITE_OK {
            print("error opening database")
        }
        
        if sender.isSelected {
            well.isSelected = false
                for i in 0...Schermata2.insights.count - 1{
                    if(Schermata2.insights[i] != "Wellbein"){
                    temp.append(Schermata2.insights[i])
                }
            }
            AddInsights.j = AddInsights.j - 1
            Schermata2.insights = temp
            Schermata2.insights.append("")
            
            let queryString = "UPDATE Insights SET b1 = '\(Schermata2.insights[0])', b2 = '\(Schermata2.insights[1])', b3 = '\(Schermata2.insights[2])', b4 = '\(Schermata2.insights[3])', b5 = '\(Schermata2.insights[4])';"
            sqlite3_prepare(db, queryString, -1, &stmt, nil)
            sqlite3_step(stmt)
            print("Saved successfully")
        } else {
            well.isSelected = true
               
            //Update Valore
            var ins = ""
            switch AddInsights.j {
                case 0: ins = "b1"
                case 1: ins = "b2"
                case 2: ins = "b3"
                case 3: ins = "b4"
                default: ins = "b5"
            }
            let queryString = "UPDATE Insights SET \(ins) = 'Wellbein';"
            sqlite3_prepare(db, queryString, -1, &stmt, nil)
            sqlite3_step(stmt)
            print("Saved successfully")
            AddInsights.j = AddInsights.j + 1
        }
    }
    
    @IBAction func movies(_ sender: UIButton) {
        //Si connette al DB
        let fileURL = try!
        FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false).appendingPathComponent("Database.sqlite")
        if sqlite3_open(fileURL.path, &db) != SQLITE_OK {
            print("error opening database")
        }
        
        if sender.isSelected {
            mov.isSelected = false
            for i in 0...Schermata2.insights.count - 1{
                if(Schermata2.insights[i] != "Movies"){
                    temp.append(Schermata2.insights[i])
                }
            }
            AddInsights.j = AddInsights.j - 1
            Schermata2.insights = temp
            Schermata2.insights.append("")
            let queryString = "UPDATE Insights SET b1 = '\(Schermata2.insights[0])', b2 = '\(Schermata2.insights[1])', b3 = '\(Schermata2.insights[2])', b4 = '\(Schermata2.insights[3])', b5 = '\(Schermata2.insights[4])';"
            sqlite3_prepare(db, queryString, -1, &stmt, nil)
            sqlite3_step(stmt)
            print("Saved successfully")
        } else {
            mov.isSelected = true
            
            //Update Valore
            var ins = ""
            switch AddInsights.j {
                case 0: ins = "b1"
                case 1: ins = "b2"
                case 2: ins = "b3"
                case 3: ins = "b4"
                default: ins = "b5"
            }
            let queryString = "UPDATE Insights SET \(ins) = 'Movies';"
            sqlite3_prepare(db, queryString, -1, &stmt, nil)
            sqlite3_step(stmt)
            print("Saved successfully")
            AddInsights.j = AddInsights.j + 1
        }
    }
    
    @IBAction func articols(_ sender: UIButton) {
        //Si connette al DB
        let fileURL = try!
        FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false).appendingPathComponent("Database.sqlite")
        if sqlite3_open(fileURL.path, &db) != SQLITE_OK {
            print("error opening database")
        }
        
        if sender.isSelected {
            art.isSelected = false
            for i in 0...Schermata2.insights.count - 1{
                if(Schermata2.insights[i] != "Articols"){
                    temp.append(Schermata2.insights[i])
                }
            }
            AddInsights.j = AddInsights.j - 1
            Schermata2.insights = temp
            Schermata2.insights.append("")
            
            let queryString = "UPDATE Insights SET b1 = '\(Schermata2.insights[0])', b2 = '\(Schermata2.insights[1])', b3 = '\(Schermata2.insights[2])', b4 = '\(Schermata2.insights[3])', b5 = '\(Schermata2.insights[4])';"
            sqlite3_prepare(db, queryString, -1, &stmt, nil)
            sqlite3_step(stmt)
            print("Saved successfully")
        } else {
            art.isSelected = true
            
            //Update Valore
            var ins = ""
            switch AddInsights.j {
                case 0: ins = "b1"
                case 1: ins = "b2"
                case 2: ins = "b3"
                case 3: ins = "b4"
                default: ins = "b5"
            }
            let queryString = "UPDATE Insights SET \(ins) = 'Articols';"
            sqlite3_prepare(db, queryString, -1, &stmt, nil)
            sqlite3_step(stmt)
            print("Saved successfully")
            AddInsights.j = AddInsights.j + 1
        }
    }
    
    @IBAction func artist(_ sender: UIButton) {
        //Si connette al DB
        let fileURL = try!
        FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false).appendingPathComponent("Database.sqlite")
        if sqlite3_open(fileURL.path, &db) != SQLITE_OK {
            print("error opening database")
        }
        
        if sender.isSelected {
            artist.isSelected = false
            for i in 0...Schermata2.insights.count - 1{
                if(Schermata2.insights[i] != "Artist"){
                    temp.append(Schermata2.insights[i])
                }
            }
            AddInsights.j = AddInsights.j - 1
            Schermata2.insights = temp
            Schermata2.insights.append("")
            
            let queryString = "UPDATE Insights SET b1 = '\(Schermata2.insights[0])', b2 = '\(Schermata2.insights[1])', b3 = '\(Schermata2.insights[2])', b4 = '\(Schermata2.insights[3])', b5 = '\(Schermata2.insights[4])';"
            sqlite3_prepare(db, queryString, -1, &stmt, nil)
            sqlite3_step(stmt)
            print("Saved successfully")
        } else {
            artist.isSelected = true
            
            //Update Valore
            var ins = ""
            switch AddInsights.j {
                case 0: ins = "b1"
                case 1: ins = "b2"
                case 2: ins = "b3"
                case 3: ins = "b4"
                default: ins = "b5"
            }
            let queryString = "UPDATE Insights SET \(ins) = 'Artist';"
            sqlite3_prepare(db, queryString, -1, &stmt, nil)
            sqlite3_step(stmt)
            print("Saved successfully")
            AddInsights.j = AddInsights.j + 1
        }
    }
}
