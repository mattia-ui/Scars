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
    var title: String
    var descr: String
    var image: String
}

var weeklyInfo: [WeeklyStruct] = [
    WeeklyStruct(title:"Read a good book",descr: "Did you know that reading reduces stress levels, improves mood and is very good for your mind? What are you waiting for? Choose something you like and start reading it.", image:"Weekly1"),
    WeeklyStruct(title:"Follow a passion, dedicate yourself to a hobby",descr: "If you love something, why not do it? There is no room for criticism here, there is only you and your passions. Be positive, be creative and enjoy it.", image:"Weekly2"),
    WeeklyStruct(title:"Try new things, get out of your comfort zone",descr: "Did you know that a comfort zone is a self-imposed boundary that a person refuses to cross? What are you waiting for? Try new flavors, wear new colors and do something you've never done before!", image:"Weekly3"),
    WeeklyStruct(title:"Become aware of your difficulties",descr: "A. Einstein said: ‘If you judge a fish by its ability to climb a tree, it will live its whole life believing that it is stupid.’ Accept your limits but after a failure always be ready to rediscover yourself again.", image:"Weekly4"),  WeeklyStruct(title:"List the things you like about your body",descr: "Today remember that there is no one else in the world who is just like you. The things that make you unique are what make you special. Think about what you love most about yourself and be proud of it!", image:"Weekly5"),
    WeeklyStruct(title:"Stay in contact with nature",descr: "Did you know that contact with nature affects our relationship with other people and makes us less irritable? So today turn off your phone for a while and get outside. ", image:"Weekly6"),
    WeeklyStruct(title:"Surround yourself with positive people and talk with them",descr: "Today try to avoid critical and negative people who have a problem for each solution. Let go of negativity, surround yourself by positive people, make pancakes and enjoy!", image:"Weekly7"),
    WeeklyStruct(title:"Make a list or rethink your achievements",descr: "When you set yourself a goal to reach, it seems unreachable. Today make a list of all the obstacles you have overcome, you will discover that they do not even have half the strength you have!", image:"Weekly8")
]

let NotificationKey2 = "co.seanallen.Side2"

class Schermata1: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var orarioSetUp: UILabel!
    var i = 1
    @IBOutlet weak var activity: UICollectionView!
    @IBOutlet weak var titleW: UILabel!
    @IBOutlet weak var imageW: UIImageView!
    @IBOutlet weak var descW: UILabel!
    @IBOutlet weak var nome: UILabel!
    @IBOutlet weak var imagineOrario: UIImageView!
    @IBOutlet weak var numeroWeek: UILabel!
    
    let light = Notification.Name(rawValue: NotificationKey2)
    
    deinit {
           NotificationCenter.default.removeObserver(self)
    }
    
    func createObservers() {
        NotificationCenter.default.addObserver(self, selector: #selector(Schermata1.update(notification:)), name: light, object: nil)
    }
    
    static var frasiDeStoCazzo : [String] = ["Great! The first step is done!","You are in great shape today!","Go up and never stop.","Wow! You are almost halfway there.","Keep it up, goes very well!","Don't give up, you're almost done.","Power! Only one is missing.","You did it great!" , "Well done! See you tomorrow."]
    
    static var allImages: [String] = ["unchecked","unchecked","unchecked","unchecked","unchecked","unchecked","unchecked","unchecked","unchecked"]
    static var allCardsImages: [String] = ["Card1p","Card2p","Card3p","Card4p","Card5p","Card6p","Card7p","Card8p","Card9p"]
    static var weekly: WeeklyStruct = WeeklyStruct(title:"",descr: "", image: "")
    @IBOutlet weak var spronatiLabel: UILabel!
    
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
    
        
        cell.cardsImage.image = UIImage(named: Schermata1.allCardsImages[indexPath.row] + ".png")
        let tap = MyTapGesture(target: self, action: #selector(self.go(sender:)))
               tap.id = indexPath.row
        cell.cardsImage.isUserInteractionEnabled = true
        cell.cardsImage.addGestureRecognizer(tap)

        if(Schermata1.allImages[indexPath.row] == "checked"){
            cell.check.isSelected = true
        } else {
             cell.check.isSelected = false
        }
        cell.check.tag = indexPath.row
        
        return cell
    }
        
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            
        let cellWidth = 163
        let cellHeight = 115
        return CGSize(width: cellWidth, height: cellHeight)
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        if (kind == UICollectionView.elementKindSectionFooter) {
            let footerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "CartFooterCollectionReusableView", for: indexPath)
            // Customize footerView here
            return footerView
        }
        fatalError()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(false, animated: animated);
        super.viewWillDisappear(animated)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    @objc func update(notification: NSNotification) {
        var count : Int = 0
        for k in 0...8 {
            print(Schermata1.allImages[k])
            if( Schermata1.allImages[k] == "checked") {
               count = count + 1
            }
            print("\(count)")
        }
        
        switch count {
            case 1 : spronatiLabel.text = Schermata1.frasiDeStoCazzo[0]
            case 2 : spronatiLabel.text = Schermata1.frasiDeStoCazzo[1]
            case 3 : spronatiLabel.text = Schermata1.frasiDeStoCazzo[2]
            case 4 : spronatiLabel.text = Schermata1.frasiDeStoCazzo[3]
            case 5 : spronatiLabel.text = Schermata1.frasiDeStoCazzo[4]
            case 6 : spronatiLabel.text = Schermata1.frasiDeStoCazzo[5]
            case 7 : spronatiLabel.text = Schermata1.frasiDeStoCazzo[6]
            case 8 : spronatiLabel.text = Schermata1.frasiDeStoCazzo[7]
            case 9 : spronatiLabel.text = Schermata1.frasiDeStoCazzo[8]
            default : spronatiLabel.text = "Start the activities and mark them as done!"
        }
    }
    
    @objc func update2() {
        var count : Int = 0
        for k in 0...8 {
            if( Schermata1.allImages[k] == "checked") {
               count = count+1
            }
            print("\(count)")
        }
        
        switch count {
            case 1 : spronatiLabel.text = Schermata1.frasiDeStoCazzo[0]
            case 2 : spronatiLabel.text = Schermata1.frasiDeStoCazzo[1]
            case 3 : spronatiLabel.text = Schermata1.frasiDeStoCazzo[2]
            case 4 : spronatiLabel.text = Schermata1.frasiDeStoCazzo[3]
            case 5 : spronatiLabel.text = Schermata1.frasiDeStoCazzo[4]
            case 6 : spronatiLabel.text = Schermata1.frasiDeStoCazzo[5]
            case 7 : spronatiLabel.text = Schermata1.frasiDeStoCazzo[6]
            case 8 : spronatiLabel.text = Schermata1.frasiDeStoCazzo[7]
            case 9 : spronatiLabel.text = Schermata1.frasiDeStoCazzo[8]
            default : spronatiLabel.text = "Start the activities and mark them as done!"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        overrideUserInterfaceStyle = .light

        overrideUserInterfaceStyle = .light   
        UserDefaults.standard.set(true, forKey: "LaunchedBefore")
        let layout = UICollectionViewFlowLayout()
        
        var db: OpaquePointer?
        let dateNow = Date()
        let calendar2 = Calendar.current
        let components2 = calendar2.dateComponents([.year, .month, .day, .hour, .minute, .second, .weekday], from: dateNow)
        let month2 = components2.month ?? 0
        let day2 = components2.day ?? 0
        let hour2 = components2.hour ?? 0
        let minute2 = components2.minute ?? 0
                
        if(hour2 > 14){
            imagineOrario.image = UIImage(named: "Afternoon")
            orarioSetUp.text = "Good Afternoon,"
        } else if (hour2 > 20 && hour2 < 5){
            imagineOrario.image = UIImage(named: "Evening")
            orarioSetUp.text = "Good Evening,"
        }else{
            imagineOrario.image = UIImage(named: "Morning")
            orarioSetUp.text = "Good Morning,"
        }
                
        //Si connette al DB
        let fileURL = try!
        FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false).appendingPathComponent("Database.sqlite")
        if sqlite3_open(fileURL.path, &db) != SQLITE_OK {
            print("error opening database")
        }
                
        //Recupera Valore
        var stmt: OpaquePointer?
        var queryString = "SELECT * FROM Nome"
        if sqlite3_prepare(db, queryString, -1, &stmt, nil) != SQLITE_OK{
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error preparing insert: \(errmsg)")
            return
        }
        var nomeData = ""
        while(sqlite3_step(stmt) == SQLITE_ROW){
            nomeData = String(cString: sqlite3_column_text(stmt, 1))
        }
                
        nome.text = String(nomeData.dropFirst(10).dropLast(2)) + "!"
                
        //Recupera Valore
        queryString = "SELECT * FROM Date"
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
                
        //Recupera Valore
        queryString = "SELECT * FROM Week"
        if sqlite3_prepare(db, queryString, -1, &stmt, nil) != SQLITE_OK{
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error preparing insert: \(errmsg)")
            return
        }
                
        var w = 0
        let week = Calendar.current.component(.weekday, from: dateNow)
        while(sqlite3_step(stmt) == SQLITE_ROW){
            w = Int(String(cString: sqlite3_column_text(stmt, 1))) ?? 0
        }
        numeroWeek.text = "n.\(w + 1)"
                
        if(month2 > m || day2 > day){
            queryString = "UPDATE Date SET mese = '\(month2)', giorno = '\(day2)', ora = '\(hour2)', minuti = '\(minute2)';"
            sqlite3_prepare(db, queryString, -1, &stmt, nil)
            sqlite3_step(stmt)
            print("Saved successfully")
                    
            queryString = "UPDATE InfoSchermata1 SET c1 = 'unchecked', c2 = 'unchecked', c3 = 'unchecked', c4 = 'unchecked', c5 = 'unchecked', c6 = 'unchecked';"
            sqlite3_prepare(db, queryString, -1, &stmt, nil)
            sqlite3_step(stmt)
            print("Saved successfully")
                    
            if(week == 1){
                if(w == 7){w = 0} else {w = w + 1}
                queryString = "UPDATE Week SET valore = '\(w)';"
                sqlite3_prepare(db, queryString, -1, &stmt, nil)
                sqlite3_step(stmt)
                print("Saved successfully")
            }
        }
                
        Schermata1.weekly = weeklyInfo[w]
        imageW.image = UIImage(named: Schermata1.weekly.image)
//        titleW.text = Schermata1.weekly.title
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
            Schermata1.allImages[5] = String(cString: sqlite3_column_text(stmt, 6))
            Schermata1.allImages[6] = String(cString: sqlite3_column_text(stmt, 7))
            Schermata1.allImages[7] = String(cString: sqlite3_column_text(stmt, 8))
            Schermata1.allImages[8] = String(cString: sqlite3_column_text(stmt, 9))
        }
        update2()
        createObservers()
    }
    
    @objc func go(sender : MyTapGesture) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let secondVC = storyboard.instantiateViewController(withIdentifier: "imageColl")  as! ViewControllerInitial
        secondVC.id1 = sender.id
        self.navigationController?.view.semanticContentAttribute = .forceLeftToRight
        self.navigationController?.pushViewController(secondVC, animated: true)
       
    }
    
}

