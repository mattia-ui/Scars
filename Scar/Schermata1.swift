//
//  SecretCollection.swift
//  Scar
//
//  Created by Mattia Cardone on 02/05/2020.
//  Copyright © 2020 Mattia Cardone. All rights reserved.
//

import UIKit
import CloudKit
import SQLite3


class MyTapGesture1: UITapGestureRecognizer {
    var id1 = Int()
}

struct WeeklyStruct {
    var descr: String
    var image: String
}

var weeklyInfo: [WeeklyStruct] = [
    WeeklyStruct(descr: "CIAO", image:"2-.png"),
    WeeklyStruct(descr: "CIAO", image:"2-.png"),
    WeeklyStruct(descr: "CIAO", image:"2-.png"),
    WeeklyStruct(descr: "CIAO", image:"2-.png")
]

class Schermata1: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    var i = 1
    @IBOutlet weak var activity: UICollectionView!
    @IBOutlet weak var imageW: UIImageView!
    @IBOutlet weak var descW: UILabel!
    
    static var allImages: [String] = ["unchecked","unchecked","unchecked","unchecked","unchecked"]
    static var weekly: WeeklyStruct = WeeklyStruct(descr: "", image: "")
    
    @IBAction func secret(_ sender: Any) {
        if(i == 15){
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let secondVC = storyboard.instantiateViewController(withIdentifier: "pass")  as! Password
            self.navigationController?.pushViewController(secondVC, animated: true)
        } else {
            i = i + 1
        }
    }
  
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Schermata1.allImages.count
    }
        
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = activity.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath) as! CollectionViewCell1
        cell.cardsImage.image = UIImage(named: Schermata1.allImages[indexPath.row] + ".png")
        let tap = MyTapGesture(target: self, action: #selector(self.go(sender:)))
        tap.id = indexPath.row
        cell.cardsImage.isUserInteractionEnabled = true
        cell.cardsImage.addGestureRecognizer(tap)
        return cell
    }
        
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            
        let cellWidth = 114
        let cellHeight = 164
        return CGSize(width: cellWidth, height: cellHeight)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(false, animated: animated);
        super.viewWillDisappear(animated)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
        
        var db: OpaquePointer?
        let dateNow = Date()
        let calendar2 = Calendar.current
        let components2 = calendar2.dateComponents([.year, .month, .day, .hour, .minute, .second, .weekday], from: dateNow)
        let month2 = components2.month ?? 0
        let day2 = components2.day ?? 0
        let hour2 = components2.hour ?? 0
        let minute2 = components2.minute ?? 0
        let weekday = components2.minute ?? 0
        
        //Si connette al DB
        let fileURL = try!
        FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false).appendingPathComponent("Database.sqlite")
        if sqlite3_open(fileURL.path, &db) != SQLITE_OK {
            print("error opening database")
        }
        
        //Recupera Valore
        var stmt: OpaquePointer?
        var queryString = "SELECT * FROM Date"
        if sqlite3_prepare(db, queryString, -1, &stmt, nil) != SQLITE_OK{
        let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error preparing insert: \(errmsg)")
            return
        }
        
        var m = 0, day = 0, h = 0, min = 0
        while(sqlite3_step(stmt) == SQLITE_ROW && m < 1){
            m = Int(String(cString: sqlite3_column_text(stmt, 1))) ?? 0
            day = Int(String(cString: sqlite3_column_text(stmt, 2))) ?? 0
            h = Int(String(cString: sqlite3_column_text(stmt, 3))) ?? 0
            min = Int(String(cString: sqlite3_column_text(stmt, 4))) ?? 0
        }
        
        if(month2 > m || day2 > day){
            queryString = "UPDATE Date SET mese = '\(month2)', giorno = '\(day2)', ora = '\(hour2)', minuti = '\(minute2)';"
            sqlite3_prepare(db, queryString, -1, &stmt, nil)
            sqlite3_step(stmt)
            print("Saved successfully")
            
            queryString = "UPDATE InfoSchermata1 SET c1 = 'unchecked', c2 = 'unchecked', c3 = 'unchecked', c4 = 'unchecked', c5 = 'unchecked';"
            sqlite3_prepare(db, queryString, -1, &stmt, nil)
            sqlite3_step(stmt)
            print("Saved successfully")
        }
        
        //Recupera Valore
        queryString = "SELECT * FROM Week"
        if sqlite3_prepare(db, queryString, -1, &stmt, nil) != SQLITE_OK{
        let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error preparing insert: \(errmsg)")
            return
        }
        
        var w = 0
        while(sqlite3_step(stmt) == SQLITE_ROW){
            w = Int(String(cString: sqlite3_column_text(stmt, 1))) ?? 0
        }
        
        if(weekday == 7){
            w = w + 1
            queryString = "UPDATE Week SET valore = '\(w)';"
            sqlite3_prepare(db, queryString, -1, &stmt, nil)
            sqlite3_step(stmt)
            print("Saved successfully")
        }
                
        Schermata1.weekly = weeklyInfo[w]
        imageW.image = UIImage(named: Schermata1.weekly.image)
        descW.text = Schermata1.weekly.descr
        
        //Recupera Valore
        queryString = "SELECT * FROM InfoSchermata1"
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
        }
    }
        

    override func viewDidLoad() {
        super.viewDidLoad()
        
        UserDefaults.standard.set(true, forKey: "LaunchedBefore")
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
    }
    
    @objc func go(sender : MyTapGesture) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let secondVC = storyboard.instantiateViewController(withIdentifier: "imageColl")  as! ViewControllerInitial
        secondVC.id1 = sender.id
        self.navigationController?.pushViewController(secondVC, animated: true)
    }
    
}

