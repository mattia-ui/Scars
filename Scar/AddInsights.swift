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
    @IBOutlet weak var books: UIButton!
    
    static var j: Int = 0
    var db: OpaquePointer?
    var stmt: OpaquePointer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        overrideUserInterfaceStyle = .light

        AddInsights.j = 0
        for i in 0...Schermata2.insights.count - 1{
             if(Schermata2.insights[i] == "TEDx"){
                AddInsights.j = AddInsights.j + 1
                pod.isSelected = true
            }
            
            if(Schermata2.insights[i] == "Movies&TVShows"){
                AddInsights.j = AddInsights.j + 1
                well.isSelected = true
            }
            
            if(Schermata2.insights[i] == "Articles"){
                AddInsights.j = AddInsights.j + 1
                mov.isSelected = true
            }
            
            if(Schermata2.insights[i] == "Books"){
                AddInsights.j = AddInsights.j + 1
                art.isSelected = true
            }
            
            if(Schermata2.insights[i] == "Inspiring People"){
                AddInsights.j = AddInsights.j + 1
                artist.isSelected = true
            }
            
            if(Schermata2.insights[i] == "Podcasts"){
                AddInsights.j = AddInsights.j + 1
                books.isSelected = true
            }
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        let name = Notification.Name(rawValue: NotificationKey)
        NotificationCenter.default.post(name: name, object: nil)
    }
   
    @IBAction func podcast(_ sender: UIButton) {
        var temp: [String] = []
        
        //Si connette al DB
        let fileURL = try!
        FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false).appendingPathComponent("Database.sqlite")
        if sqlite3_open(fileURL.path, &db) != SQLITE_OK {
            print("error opening database")
        }
        
        if sender.isSelected {
            pod.isSelected = false
            for i in 0...Schermata2.insights.count - 1{
                if(Schermata2.insights[i] != "TEDx" && Schermata2.insights[i] != ""){
                    temp.append(Schermata2.insights[i])
                }
            }
            AddInsights.j = AddInsights.j - 1
            Schermata2.insights = temp
            for i in 0..<6 - Schermata2.insights.count{
                Schermata2.insights.append("")
            }
                  
            for i in 0..<Schermata2.insights.count{
                print(Schermata2.insights[i])
            }
            
            
            let queryString = "UPDATE Insights SET b1 = '\(Schermata2.insights[0])', b2 = '\(Schermata2.insights[1])', b3 = '\(Schermata2.insights[2])', b4 = '\(Schermata2.insights[3])', b5 = '\(Schermata2.insights[4])', b6 = '\(Schermata2.insights[5])';"
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
                case 4: ins = "b5"
                default: ins = "b6"
            }
            let queryString = "UPDATE Insights SET \(ins) = 'TEDx';"
            sqlite3_prepare(db, queryString, -1, &stmt, nil)
            sqlite3_step(stmt)
            print("Saved successfully")
            AddInsights.j = AddInsights.j + 1
        }
    }
    
    @IBAction func wellbein(_ sender: UIButton) {
        var temp: [String] = []
        
        //Si connette al DB
        let fileURL = try!
        FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false).appendingPathComponent("Database.sqlite")
        if sqlite3_open(fileURL.path, &db) != SQLITE_OK {
            print("error opening database")
        }
        
        if sender.isSelected {
            well.isSelected = false
                for i in 0...Schermata2.insights.count - 1{
                    if(Schermata2.insights[i] != "Movies&TVShows" && Schermata2.insights[i] != ""){
                    temp.append(Schermata2.insights[i])
                }
            }
            AddInsights.j = AddInsights.j - 1
            Schermata2.insights = temp
            for i in 0..<6 - Schermata2.insights.count{
                Schermata2.insights.append("")
            }
            
            for i in 0..<Schermata2.insights.count{
                print(Schermata2.insights[i])
            }
                  
            
            let queryString = "UPDATE Insights SET b1 = '\(Schermata2.insights[0])', b2 = '\(Schermata2.insights[1])', b3 = '\(Schermata2.insights[2])', b4 = '\(Schermata2.insights[3])', b5 = '\(Schermata2.insights[4])', b6 = '\(Schermata2.insights[5])';"
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
                case 4: ins = "b5"
                default: ins = "b6"
            }
            let queryString = "UPDATE Insights SET \(ins) = 'Movies&TVShows';"
            sqlite3_prepare(db, queryString, -1, &stmt, nil)
            sqlite3_step(stmt)
            print("Saved successfully")
            AddInsights.j = AddInsights.j + 1
        }
    }
    
    @IBAction func movies(_ sender: UIButton) {
        var temp: [String] = []
        
        //Si connette al DB
        let fileURL = try!
        FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false).appendingPathComponent("Database.sqlite")
        if sqlite3_open(fileURL.path, &db) != SQLITE_OK {
            print("error opening database")
        }
        
        if sender.isSelected {
            mov.isSelected = false
            for i in 0...Schermata2.insights.count - 1{
                if(Schermata2.insights[i] != "Articles" && Schermata2.insights[i] != ""){
                    temp.append(Schermata2.insights[i])
                }
            }
            AddInsights.j = AddInsights.j - 1
            Schermata2.insights = temp
            for i in 0..<6 - Schermata2.insights.count{
                Schermata2.insights.append("")
            }
            
            
            for i in 0..<Schermata2.insights.count{
                print(Schermata2.insights[i])
            }
            
            let queryString = "UPDATE Insights SET b1 = '\(Schermata2.insights[0])', b2 = '\(Schermata2.insights[1])', b3 = '\(Schermata2.insights[2])', b4 = '\(Schermata2.insights[3])', b5 = '\(Schermata2.insights[4])', b6 = '\(Schermata2.insights[5])';"
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
                case 4: ins = "b5"
                default: ins = "b6"
            }
            let queryString = "UPDATE Insights SET \(ins) = 'Articles';"
            sqlite3_prepare(db, queryString, -1, &stmt, nil)
            sqlite3_step(stmt)
            print("Saved successfully")
            AddInsights.j = AddInsights.j + 1
        }
    }
    
    @IBAction func articols(_ sender: UIButton) {
        var temp: [String] = []
        
        //Si connette al DB
        let fileURL = try!
        FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false).appendingPathComponent("Database.sqlite")
        if sqlite3_open(fileURL.path, &db) != SQLITE_OK {
            print("error opening database")
        }
        
        if sender.isSelected {
            art.isSelected = false
            for i in 0...Schermata2.insights.count - 1{
                if(Schermata2.insights[i] != "Books" && Schermata2.insights[i] != ""){
                    temp.append(Schermata2.insights[i])
                }
            }
            AddInsights.j = AddInsights.j - 1
            Schermata2.insights = temp
            for i in 0..<6 - Schermata2.insights.count{
                Schermata2.insights.append("")
            }
            
            
            for i in 0..<Schermata2.insights.count{
                print(Schermata2.insights[i])
            }
            
            let queryString = "UPDATE Insights SET b1 = '\(Schermata2.insights[0])', b2 = '\(Schermata2.insights[1])', b3 = '\(Schermata2.insights[2])', b4 = '\(Schermata2.insights[3])', b5 = '\(Schermata2.insights[4])', b6 = '\(Schermata2.insights[5])';"
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
                case 4: ins = "b5"
                default: ins = "b6"
            }
            let queryString = "UPDATE Insights SET \(ins) = 'Books';"
            sqlite3_prepare(db, queryString, -1, &stmt, nil)
            sqlite3_step(stmt)
            print("Saved successfully")
            AddInsights.j = AddInsights.j + 1
        }
    }
    
    @IBAction func artist(_ sender: UIButton) {
        var temp: [String] = []
        
        //Si connette al DB
        let fileURL = try!
        FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false).appendingPathComponent("Database.sqlite")
        if sqlite3_open(fileURL.path, &db) != SQLITE_OK {
            print("error opening database")
        }
        
        if sender.isSelected {
            artist.isSelected = false
            for i in 0...Schermata2.insights.count - 1{
                if(Schermata2.insights[i] != "Inspiring People" && Schermata2.insights[i] != ""){
                    temp.append(Schermata2.insights[i])
                }
            }
            AddInsights.j = AddInsights.j - 1
            Schermata2.insights = temp
            for i in 0..<6 - Schermata2.insights.count{
                Schermata2.insights.append("")
            }
               
            
            for i in 0..<Schermata2.insights.count{
                print(Schermata2.insights[i])
            }
            
            let queryString = "UPDATE Insights SET b1 = '\(Schermata2.insights[0])', b2 = '\(Schermata2.insights[1])', b3 = '\(Schermata2.insights[2])', b4 = '\(Schermata2.insights[3])', b5 = '\(Schermata2.insights[4])', b6 = '\(Schermata2.insights[5])';"
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
                case 4: ins = "b5"
                default: ins = "b6"
            }
            let queryString = "UPDATE Insights SET \(ins) = 'Inspiring People';"
            sqlite3_prepare(db, queryString, -1, &stmt, nil)
            sqlite3_step(stmt)
            print("Saved successfully")
            AddInsights.j = AddInsights.j + 1
        }
    }
    
    @IBAction func books(_ sender: UIButton) {
        var temp: [String] = []
        
        //Si connette al DB
        let fileURL = try!
        FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false).appendingPathComponent("Database.sqlite")
        if sqlite3_open(fileURL.path, &db) !=
            SQLITE_OK {
            print("error opening database")
        }
            
        if sender.isSelected {
            books.isSelected = false
            for i in 0...Schermata2.insights.count - 1{
                if(Schermata2.insights[i] != "Podcasts" && Schermata2.insights[i] != ""){
                    temp.append(Schermata2.insights[i])
                }
            }
            AddInsights.j = AddInsights.j - 1
            Schermata2.insights = temp
            for i in 0..<6 - Schermata2.insights.count{
                Schermata2.insights.append("")
            }
               
            
            for i in 0..<Schermata2.insights.count{
                print(Schermata2.insights[i])
            }
                
            let queryString = "UPDATE Insights SET b1 = '\(Schermata2.insights[0])', b2 = '\(Schermata2.insights[1])', b3 = '\(Schermata2.insights[2])', b4 = '\(Schermata2.insights[3])', b5 = '\(Schermata2.insights[4])', b6 = '\(Schermata2.insights[5])';"
            sqlite3_prepare(db, queryString, -1, &stmt, nil)
            sqlite3_step(stmt)
            print("Saved successfully")
        } else {
            books.isSelected = true
                
            //Update Valore
            var ins = ""
            switch AddInsights.j {
                case 0: ins = "b1"
                case 1: ins = "b2"
                case 2: ins = "b3"
                case 3: ins = "b4"
                case 4: ins = "b5"
                default: ins = "b6"
            }
            let queryString = "UPDATE Insights SET \(ins) = 'Podcasts';"
            sqlite3_prepare(db, queryString, -1, &stmt, nil)
            sqlite3_step(stmt)
            print("Saved successfully")
            AddInsights.j = AddInsights.j + 1
        }
        
    }
}

