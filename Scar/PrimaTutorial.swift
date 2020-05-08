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

class PrimaTutorial : UIViewController, UITableViewDataSource, UITableViewDelegate{

    @IBOutlet weak var illustrazione: UIImageView!
    @IBOutlet weak var welcome: UILabel!
    @IBOutlet weak var frase1: UILabel!
    @IBOutlet weak var domanda1: UILabel!
    @IBOutlet weak var nome1: UITextField!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var TableView: UITableView!
    @IBOutlet weak var LastStep: UILabel!
    @IBOutlet weak var domande3: UILabel!
    @IBOutlet weak var button3: UIButton!
    
    var db: OpaquePointer?
    var stmt: OpaquePointer?

    var selected : [String] = ["","","","","",""]
    
    func setSelected(stringa: String, n: Int){
        print(stringa)
        selected[n] = stringa
    }
    
    func traslate(view: UIView, aCircleTime: Double, to: CGFloat) {
           print(view.frame.origin.x)
               UIView.animate(withDuration: aCircleTime, animations: { () -> Void in
                   view.transform = CGAffineTransform(translationX: to, y: 0)})
       
       }
    @IBAction func buttonCellPressed(_ sender: UIButton) {
        if(sender.isSelected){
                   sender.isSelected = false
                   PrimaTutorial().setSelected(stringa: "", n: sender.tag )
               }else{
                   sender.isSelected = true
                   let s : String = String(String(describing: sender.title(for: .normal)).dropFirst(10).dropLast(2))
            print(sender.tag)
                   selected[sender.tag] = s
        }
    }
    
    @IBAction func startPressed(_ sender: UIButton) {
        traslate(view: illustrazione, aCircleTime: 0.2, to: -100)
        traslate(view: welcome, aCircleTime: 0.2, to: -100)
        traslate(view: frase1, aCircleTime: 0.2, to: -100)
        traslate(view: domanda1, aCircleTime: 0.2, to: -100)
        traslate(view: nome1, aCircleTime: 0.2, to: -100)
        traslate(view: button1, aCircleTime: 0.2, to: -100)
        traslate(view: TableView, aCircleTime: 0.2, to: -100)
        traslate(view: LastStep, aCircleTime: 0.2, to: -100)
        traslate(view: domande3, aCircleTime: 0.2, to: -100)
        traslate(view: button3, aCircleTime: 0.2, to: -100)
        sleep(UInt32(0.2))
        
        traslate(view: illustrazione, aCircleTime: 0.4, to: -364)
        traslate(view: welcome, aCircleTime: 0.4, to: -364)
        traslate(view: frase1, aCircleTime: 0.4, to: -364)
        traslate(view: domanda1, aCircleTime: 0.4, to: -364)
        traslate(view: nome1, aCircleTime: 0.4, to: -364)
        traslate(view: button1, aCircleTime: 0.4, to: -364)
        traslate(view: TableView, aCircleTime: 0.4, to: -364)
        traslate(view: LastStep, aCircleTime: 0.4, to: -364)
        traslate(view: domande3, aCircleTime: 0.4, to: -364)
        traslate(view: button3, aCircleTime: 0.4, to: -364)
        sleep(UInt32(0.4))

        traslate(view: illustrazione, aCircleTime: 0.1, to: -414)
        traslate(view: welcome, aCircleTime: 0.1, to: -414)
        traslate(view: frase1, aCircleTime: 0.1, to: -414)
        traslate(view: domanda1, aCircleTime: 0.1, to: -414)
        traslate(view: nome1, aCircleTime: 0.1, to: -414)
        traslate(view: button1, aCircleTime: 0.1, to: -414)
        traslate(view: TableView, aCircleTime: 0.1, to: -414)
        traslate(view: LastStep, aCircleTime: 0.1, to: -414)
        traslate(view: domande3, aCircleTime: 0.1, to: -414)
        traslate(view: button3, aCircleTime: 0.1, to: -414)
    }
    @IBAction func donePressed(_ sender: UIButton) {
        traslate(view: illustrazione, aCircleTime: 0.2, to: -514)
        traslate(view: welcome, aCircleTime: 0.2, to: -514)
        traslate(view: frase1, aCircleTime: 0.2, to: -514)
        traslate(view: domanda1, aCircleTime: 0.2, to: -514)
        traslate(view: nome1, aCircleTime: 0.2, to: -514)
        traslate(view: button1, aCircleTime: 0.2, to: -514)
        traslate(view: TableView, aCircleTime: 0.2, to: -514)
        traslate(view: LastStep, aCircleTime: 0.2, to: -514)
        traslate(view: domande3, aCircleTime: 0.2, to: -514)
        traslate(view: button3, aCircleTime: 0.2, to: -514)
        sleep(UInt32(0.2))
        
        traslate(view: illustrazione, aCircleTime: 0.4, to: -778)
        traslate(view: welcome, aCircleTime: 0.4, to: -778)
        traslate(view: frase1, aCircleTime: 0.4, to: -778)
        traslate(view: domanda1, aCircleTime: 0.4, to: -778)
        traslate(view: nome1, aCircleTime: 0.4, to: -778)
        traslate(view: button1, aCircleTime: 0.4, to: -778)
        traslate(view: TableView, aCircleTime: 0.4, to: -778)
        traslate(view: LastStep, aCircleTime: 0.4, to: -778)
        traslate(view: domande3, aCircleTime: 0.4, to: -778)
        traslate(view: button3, aCircleTime: 0.4, to: -778)
        sleep(UInt32(0.4))

        traslate(view: illustrazione, aCircleTime: 0.1, to: -828)
        traslate(view: welcome, aCircleTime: 0.1, to: -828)
        traslate(view: frase1, aCircleTime: 0.1, to: -828)
        traslate(view: domanda1, aCircleTime: 0.1, to: -828)
        traslate(view: nome1, aCircleTime: 0.1, to: -828)
        traslate(view: button1, aCircleTime: 0.1, to: -828)
        traslate(view: TableView, aCircleTime: 0.1, to: -828)
        traslate(view: LastStep, aCircleTime: 0.1, to: -828)
        traslate(view: domande3, aCircleTime: 0.1, to: -828)
        traslate(view: button3, aCircleTime: 0.1, to: -828)
        
       let queryString = "UPDATE Insights SET b1 = '\(selected[0])',b2 = '\(selected[1])',b3 = '\(selected[2])',b4 = '\(selected[3])',b5 = '\(selected[4])', b6 = '\(selected[5])';"
                   sqlite3_prepare(db, queryString, -1, &stmt, nil)
                   sqlite3_step(stmt)

    }
    
    
    override func viewWillAppear(_ animated: Bool) {
           super.viewWillAppear(animated)
           navigationController?.setNavigationBarHidden(true, animated: animated)
       }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        var db: OpaquePointer?
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard1))
        view.addGestureRecognizer(tap)
        
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
//             var stmt: OpaquePointer?
             var queryString = "INSERT INTO Collage(valore) VALUES ('si');"
             sqlite3_prepare(db, queryString, -1, &stmt, nil)
             sqlite3_step(stmt)
             print("Saved successfully")
            
            
            
            
            //Elimina Tabella. Quando Spostiamo le due funzioni successive nel tutorial non serve piu
            if sqlite3_exec(db, "DROP TABLE Week", nil, nil, nil) != SQLITE_OK {
                let errmsg = String(cString: sqlite3_errmsg(db)!)
                print("error creating table: \(errmsg)")
            }
            
            //Crea Tabella. Per valore che dice se mostrare Weekly
            if sqlite3_exec(db, "CREATE TABLE IF NOT EXISTS Week (id INTEGER PRIMARY KEY AUTOINCREMENT,valore TEXT)", nil, nil, nil) != SQLITE_OK {
                let errmsg = String(cString: sqlite3_errmsg(db)!)
                print("error creating table: \(errmsg)")
             }
             
             //Inserisce Valore. Va nel tutorial
             queryString = "INSERT INTO Week(valore) VALUES ('1');"
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
            if sqlite3_exec(db, "CREATE TABLE IF NOT EXISTS Insights (id INTEGER PRIMARY KEY AUTOINCREMENT,b1 TEXT, b2 TEXT, b3 TEXT, b4 TEXT, b5 TEXT, b6 TEXT)", nil, nil, nil) != SQLITE_OK {
                let errmsg = String(cString: sqlite3_errmsg(db)!)
                print("error creating table: \(errmsg)")
            }
                       
            //Inserisce Valore. Va nel tutorial
            queryString = "INSERT INTO Insights(b1,b2,b3,b4,b5,b6) VALUES ('','','','','','');"
            sqlite3_prepare(db, queryString, -1, &stmt, nil)
            sqlite3_step(stmt)
            print("Saved successfully")
        }
    }
    
    @objc func dismissKeyboard1() {
           view.endEditing(true)
       }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 8
        }

        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
           if indexPath.row == 0 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell1") as? Cella1 else {
                return UITableViewCell()
            }
//            cell.Hi.text = "Hi, \(String(describing: nome1.text))!"
            return cell
            
        }else if indexPath.row == 1{
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell2") as? Cella2 else {
                   return UITableViewCell()
               }
            cell.button.setTitle("Artist", for: .normal)
            cell.button.tag = 0
               return cell
           }else if indexPath.row == 2{
           guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell2") as? Cella2 else {
                      return UITableViewCell()
                  }
                  cell.button.setTitle("Wellbein", for: .normal)
                  cell.button.tag = 1
                  return cell
              }else if indexPath.row == 3{
              guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell2") as? Cella2 else {
                         return UITableViewCell()
                     }
                     cell.button.setTitle("Articols", for: .normal)
                     cell.button.tag = 2
                     return cell
                 }else if indexPath.row == 4{
                 guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell2") as? Cella2 else {
                            return UITableViewCell()
                        }
                        cell.button.setTitle("Movies", for: .normal)
                        cell.button.tag = 3
                        return cell
                    }else if indexPath.row == 5{
                    guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell2") as? Cella2 else {
                               return UITableViewCell()
                           }
                           cell.button.setTitle("Podcast", for: .normal)
                            cell.button.tag = 4
                           return cell
                       }else if indexPath.row == 6{
                       guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell2") as? Cella2 else {
                                  return UITableViewCell()
                              }
                              cell.button.setTitle("Books", for: .normal)
                                cell.button.tag = 5
                              return cell
                          }else{
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell3") as? Cella3 else {
                          return UITableViewCell()
                      }
                      return cell
            }
    }
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            if(indexPath.row == 0){
                           return 120
                       }
            if(indexPath.row == 7){
                return 200
            }
            return 100
        }
        
        override func didReceiveMemoryWarning() {
               super.didReceiveMemoryWarning()
           }
    
    
}
