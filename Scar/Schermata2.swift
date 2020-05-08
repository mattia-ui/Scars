//
//  SecretCollection.swift
//  Scar
//
//  Created by Mattia Cardone on 02/05/2020.
//  Copyright © 2020 Mattia Cardone. All rights reserved.
//

import UIKit
import SQLite3


let NotificationKey = "co.seanallen.Side"

struct Cont {
    var image: String
    var title: String
    var descr: String
    var fonte: String
    var link: String
}

struct ins {
    var pod: [Cont]
    var well: [Cont]
    var mov: [Cont]
    var art: [Cont]
    var artists: [Cont]
    var books: [Cont]
}

var structIns = [ins(
    pod:[
        Cont(image: "2-.jpg", title:"t", descr: "esempio Podcast", fonte:"f", link: "https://www.google.com/?client=safari"),
        Cont(image: "2-.jpg", title:"t", descr: "esempio Podcast", fonte:"f", link: "https://www.google.com/?client=safari")],
    well:[
        Cont(image: "2-.jpg", title:"t", descr: "esempio Wellbein", fonte:"f", link: "https://www.google.com/?client=safari"),
        Cont(image: "2-.jpg", title:"t", descr: "esempio Wellbein", fonte:"f", link: "https://www.google.com/?client=safari")],
    mov:[
        Cont(image: "2-.jpg", title:"t", descr: "esempio Movies", fonte:"f", link: "https://www.google.com/?client=safari"),
        Cont(image: "2-.jpg", title:"t", descr: "esempio Movies", fonte:"f", link: "https://www.google.com/?client=safari")],
    art:[
        Cont(image: "2-.jpg", title:"t", descr: "esempio Articols", fonte:"f", link: "https://www.google.com/?client=safari"),
        Cont(image: "2-.jpg", title:"t", descr: "esempio Articols", fonte:"f", link: "https://www.google.com/?client=safari")],
    artists:[
        Cont(image: "2-.jpg", title:"t", descr: "esempio Artistis", fonte:"f", link: "https://www.google.com/?client=safari"),
        Cont(image: "2-.jpg", title:"t", descr: "esempio Artistis", fonte:"f", link: "https://www.google.com/?client=safari")],
    books:[
        Cont(image: "2-.jpg", title:"t", descr: "esempio Books", fonte:"f", link: "https://www.google.com/?client=safari"),
        Cont(image: "2-.jpg", title:"t", descr: "esempio Books", fonte:"f", link: "https://www.google.com/?client=safari")]
)]

class Schermata2: UIViewController, UICollectionViewDataSource,UICollectionViewDelegate {
    
    static var insights: [String] = ["","","","","",""]
    var contenuto: [Cont] = []
    
    let light = Notification.Name(rawValue: NotificationKey)
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    @IBOutlet weak var b1: UIButton!
    @IBOutlet weak var b2: UIButton!
    @IBOutlet weak var b3: UIButton!
    @IBOutlet weak var b4: UIButton!
    @IBOutlet weak var b5: UIButton!
    @IBOutlet weak var b6: UIButton!
    
    @IBOutlet weak var myCollectionView: UICollectionView!
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return contenuto.count
    }


    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = myCollectionView.dequeueReusableCell(withReuseIdentifier: "ins", for: indexPath) as! InightsCollection
        cell.image.image = UIImage(named: contenuto[indexPath.row].image)
        cell.title.text = contenuto[indexPath.row].title
        cell.label.text = contenuto[indexPath.row].descr
        cell.fonte.text = contenuto[indexPath.row].fonte
        let tap = MyTap(target: self, action: #selector(self.goLink(sender:)))
        tap.link = contenuto[indexPath.row].link
        cell.button.isUserInteractionEnabled = true
        cell.button.addGestureRecognizer(tap)
        return cell
    }
    
    @objc func goLink(sender : MyTap) {
        if let url = NSURL(string: sender.link){
            UIApplication.shared.open(url as URL)
        }
     }

    override func viewWillAppear(_ animated: Bool) {
        b1.setTitle(Schermata2.insights[0], for: .normal)
        b2.setTitle(Schermata2.insights[1], for: .normal)
        b3.setTitle(Schermata2.insights[2], for: .normal)
        b4.setTitle(Schermata2.insights[3], for: .normal)
        b5.setTitle(Schermata2.insights[4], for: .normal)
        b6.setTitle(Schermata2.insights[5], for: .normal)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        caricaInfo()
        if(Schermata2.insights[0] != ""){
            if(Schermata2.insights[0] == "Podcast"){
                contenuto = structIns[0].pod
            }
            if(Schermata2.insights[0] == "Wellbein"){
                contenuto = structIns[0].well
            }
            if(Schermata2.insights[0] == "Movies"){
                contenuto = structIns[0].mov
            }
            if(Schermata2.insights[0] == "Articols"){
                contenuto = structIns[0].art
            }
            if(Schermata2.insights[0] == "Artist"){
                contenuto = structIns[0].artists
            }
            if(Schermata2.insights[0] == "Books"){
                contenuto = structIns[0].books
            }
            b1.isSelected = true
            b2.isSelected = false
            b3.isSelected = false
            b4.isSelected = false
            b5.isSelected = false
            b6.isSelected = false
            myCollectionView.reloadData()
        }
        createObservers()
    }
    
    func createObservers() {
        NotificationCenter.default.addObserver(self, selector: #selector(Schermata2.buttonName(notification:)), name: light, object: nil)
    }
    
    func caricaInfo(){
        var db: OpaquePointer?
             
        //Si connette al DB
        let fileURL = try!
        FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false).appendingPathComponent("Database.sqlite")
        if sqlite3_open(fileURL.path, &db) != SQLITE_OK {
            print("error opening database")
        }
             
        //Recupera Valore
        var stmt: OpaquePointer?
        let queryString = "SELECT * FROM Insights"
        if sqlite3_prepare(db, queryString, -1, &stmt, nil) != SQLITE_OK{
        let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error preparing insert: \(errmsg)")
            return
        }
        while(sqlite3_step(stmt) == SQLITE_ROW){
            Schermata2.insights[0] = String(cString: sqlite3_column_text(stmt, 1))
            Schermata2.insights[1] = String(cString: sqlite3_column_text(stmt, 2))
            Schermata2.insights[2] = String(cString: sqlite3_column_text(stmt, 3))
            Schermata2.insights[3] = String(cString: sqlite3_column_text(stmt, 4))
            Schermata2.insights[4] = String(cString: sqlite3_column_text(stmt, 5))
            Schermata2.insights[5] = String(cString: sqlite3_column_text(stmt, 6))
        }
    }
    
    @objc func buttonName(notification: NSNotification) {
        caricaInfo()
        b1.setTitle(Schermata2.insights[0], for: .normal)
        b2.setTitle(Schermata2.insights[1], for: .normal)
        b3.setTitle(Schermata2.insights[2], for: .normal)
        b4.setTitle(Schermata2.insights[3], for: .normal)
        b5.setTitle(Schermata2.insights[4], for: .normal)
        b6.setTitle(Schermata2.insights[5], for: .normal)
        if(Schermata2.insights[0] != ""){
            if(Schermata2.insights[0] == "Podcast"){
                contenuto = structIns[0].pod
            }
            if(Schermata2.insights[0] == "Wellbein"){
                contenuto = structIns[0].well
            }
            if(Schermata2.insights[0] == "Movies"){
                contenuto = structIns[0].mov
            }
            if(Schermata2.insights[0] == "Articols"){
                contenuto = structIns[0].art
            }
            if(Schermata2.insights[0] == "Artist"){
                contenuto = structIns[0].artists
            }
            if(Schermata2.insights[0] == "Books"){
                contenuto = structIns[0].books
            }
            b1.isSelected = true
            b2.isSelected = false
            b3.isSelected = false
            b4.isSelected = false
            b5.isSelected = false
            b6.isSelected = false
            myCollectionView.reloadData()
        }
    }

    @IBAction func setTable(_ sender: UIButton) {
        if(sender.titleLabel?.text == "Podcast"){
            contenuto = structIns[0].pod
            if !sender.isSelected {
                b1.isSelected = false
                b2.isSelected = false
                b3.isSelected = false
                b4.isSelected = false
                b5.isSelected = false
                b6.isSelected = false
                sender.isSelected = true
            }
        }
        if(sender.titleLabel?.text == "Wellbein"){
            contenuto = structIns[0].well
            if !sender.isSelected {
                b1.isSelected = false
                b2.isSelected = false
                b3.isSelected = false
                b4.isSelected = false
                b5.isSelected = false
                b6.isSelected = false
                sender.isSelected = true
            }
        }
        if(sender.titleLabel?.text == "Movies"){
            contenuto = structIns[0].mov
            if !sender.isSelected {
                b1.isSelected = false
                b2.isSelected = false
                b3.isSelected = false
                b4.isSelected = false
                b5.isSelected = false
                b6.isSelected = false
                sender.isSelected = true
            }
        }
        if(sender.titleLabel?.text == "Articols"){
            contenuto = structIns[0].art
            if !sender.isSelected {
                b1.isSelected = false
                b2.isSelected = false
                b3.isSelected = false
                b4.isSelected = false
                b5.isSelected = false
                b6.isSelected = false
                sender.isSelected = true
            }
        }
        if(sender.titleLabel?.text == "Artist"){
            contenuto = structIns[0].artists
            if !sender.isSelected {
                b1.isSelected = false
                b2.isSelected = false
                b3.isSelected = false
                b4.isSelected = false
                b5.isSelected = false
                b6.isSelected = false
                sender.isSelected = true
            }
        }
        if(sender.titleLabel?.text == "Books"){
            contenuto = structIns[0].books
            if !sender.isSelected {
                b1.isSelected = false
                b2.isSelected = false
                b3.isSelected = false
                b4.isSelected = false
                b5.isSelected = false
                b6.isSelected = false
                sender.isSelected = true
            }
        }
        myCollectionView.reloadData()
    }
}


class MyTap: UITapGestureRecognizer {
    var link = String()
}

