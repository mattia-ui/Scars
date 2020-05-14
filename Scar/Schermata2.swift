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
    @IBOutlet weak var r1: UIImageView!
    @IBOutlet weak var r2: UIImageView!
    @IBOutlet weak var r3: UIImageView!
    @IBOutlet weak var r4: UIImageView!
    @IBOutlet weak var r5: UIImageView!
    @IBOutlet weak var r6: UIImageView!
    
    @IBOutlet weak var myCollectionView: UICollectionView!
    @IBOutlet weak var scroll: UIScrollView!
    
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

    override func viewDidLoad() {
        super.viewDidLoad()
        caricaInfo()
//        var underLineColor: UIColor = .black
        if(Schermata2.insights[0] != ""){
           if(Schermata2.insights[0] == "TEDx"){
                contenuto = structIns[0].pod
//                underLineColor = .red
            }
            if(Schermata2.insights[0] == "Movies&TVShows"){
                contenuto = structIns[0].well
//                underLineColor = .purple
            }
            if(Schermata2.insights[0] == "Articles"){
                contenuto = structIns[0].mov
//                underLineColor = .yellow
            }
            if(Schermata2.insights[0] == "Books"){
                contenuto = structIns[0].art
//                underLineColor = .systemPink
            }
            if(Schermata2.insights[0] == "Inspiring People"){
                contenuto = structIns[0].artists
//                underLineColor = .green
            }
            if(Schermata2.insights[0] == "Podcasts"){
                contenuto = structIns[0].books
//                underLineColor = .orange
            }
//            let underLineStyle = NSUnderlineStyle.thick.rawValue
//            let labelAtributes:[NSAttributedString.Key : Any]  = [
//                NSAttributedString.Key.underlineStyle: underLineStyle,
//                NSAttributedString.Key.underlineColor: underLineColor
//            ]
//                                    
//            let underlineAttributedString = NSAttributedString(string: Schermata2.insights[0],attributes: labelAtributes)
//            b1.titleLabel?.attributedText =  underlineAttributedString
           
            var somma: CGFloat = 0
            b1.setTitle(Schermata2.insights[0], for: .normal)
            somma = somma + (15 * CGFloat(Schermata2.insights[0].count))
            b1.frame.size.width = 15 * CGFloat(Schermata2.insights[0].count)
            r1.image = UIImage(named: Schermata2.insights[0])
                
            b2.setTitle(Schermata2.insights[1], for: .normal)
            somma = somma + (15 * CGFloat(Schermata2.insights[1].count))
            b2.frame.size.width = 15 * CGFloat(Schermata2.insights[1].count)
            r2.image = UIImage(named: Schermata2.insights[1])
            r2.isHidden = true

            b3.setTitle(Schermata2.insights[2], for: .normal)
            somma = somma + (15 * CGFloat(Schermata2.insights[2].count))
            b3.frame.size.width = 15 * CGFloat(Schermata2.insights[2].count)
            r3.image = UIImage(named: Schermata2.insights[2])
            r3.isHidden = true

            b4.setTitle(Schermata2.insights[3], for: .normal)
            somma = somma + (15 * CGFloat(Schermata2.insights[3].count))
            b4.frame.size.width = 15 * CGFloat(Schermata2.insights[3].count)
            r4.image = UIImage(named: Schermata2.insights[3])
            r4.isHidden = true
            
            b5.setTitle(Schermata2.insights[4], for: .normal)
            somma = somma + (15 * CGFloat(Schermata2.insights[4].count))
            b5.frame.size.width = 15 * CGFloat(Schermata2.insights[4].count)
            r5.image = UIImage(named: Schermata2.insights[4])
            r5.isHidden = true

            b6.setTitle(Schermata2.insights[5], for: .normal)
            somma = somma + (15 * CGFloat(Schermata2.insights[5].count))
            b6.frame.size.width = 15 * CGFloat(Schermata2.insights[5].count)
            r6.image = UIImage(named: Schermata2.insights[5])
            r6.isHidden = true
            
            scroll.contentSize = CGSize(width: somma, height: 10)
            
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
        var underLineColor: UIColor = .clear
        let underLineStyle = NSUnderlineStyle.thick.rawValue

        var somma: CGFloat = 0
        b1.setTitle(Schermata2.insights[0], for: .normal)
        somma = somma + (10 * CGFloat(Schermata2.insights[0].count))
        b1.frame.size.width = 10 * CGFloat(Schermata2.insights[0].count)
                   
        b2.setTitle(Schermata2.insights[1], for: .normal)
        somma = somma + (10 * CGFloat(Schermata2.insights[1].count))
        b2.frame.size.width = 10 * CGFloat(Schermata2.insights[1].count)

        b3.setTitle(Schermata2.insights[2], for: .normal)
        somma = somma + (10 * CGFloat(Schermata2.insights[2].count))
        b3.frame.size.width = 10 * CGFloat(Schermata2.insights[2].count)

        b4.setTitle(Schermata2.insights[3], for: .normal)
        somma = somma + (10 * CGFloat(Schermata2.insights[3].count))
        b4.frame.size.width = 10 * CGFloat(Schermata2.insights[3].count)
                   
        b5.setTitle(Schermata2.insights[4], for: .normal)
        somma = somma + (10 * CGFloat(Schermata2.insights[4].count))
        b5.frame.size.width = 10 * CGFloat(Schermata2.insights[4].count)

        b6.setTitle(Schermata2.insights[5], for: .normal)
        somma = somma + (10 * CGFloat(Schermata2.insights[5].count))
        b6.frame.size.width = 10 * CGFloat(Schermata2.insights[5].count)

        scroll.contentSize = CGSize(width: somma, height: 10)
        
        if(Schermata2.insights[0] != ""){
            if(Schermata2.insights[0] == "TEDx"){
                contenuto = structIns[0].pod
                underLineColor = .red
            }
            if(Schermata2.insights[0] == "Movies&TVShows"){
                contenuto = structIns[0].well
                underLineColor = .purple
            }
            if(Schermata2.insights[0] == "Articles"){
                contenuto = structIns[0].mov
                underLineColor = .yellow
            }
            if(Schermata2.insights[0] == "Books"){
                contenuto = structIns[0].art
                underLineColor = .systemPink
            }
            if(Schermata2.insights[0] == "Inspiring People"){
                contenuto = structIns[0].artists
                underLineColor = .green
            }
            if(Schermata2.insights[0] == "Podcasts"){
                contenuto = structIns[0].books
                underLineColor = .orange
            }
           let labelAtributes:[NSAttributedString.Key : Any]  = [
                NSAttributedString.Key.underlineStyle: underLineStyle,
                NSAttributedString.Key.underlineColor: underLineColor
            ]
            
            let underlineAttributedString = NSAttributedString(string: Schermata2.insights[0],attributes: labelAtributes)
            b1.titleLabel?.attributedText =  underlineAttributedString
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
//        var underLineColor: UIColor = .clear
//        let underLineStyle = NSUnderlineStyle.single.rawValue
//        var labelAtributes:[NSAttributedString.Key : Any]
//        var underlineAttributedString: NSAttributedString
        
        if !sender.isSelected {
            b1.isSelected = false
//            labelAtributes = [
//                NSAttributedString.Key.underlineStyle: underLineStyle,
//                NSAttributedString.Key.underlineColor: underLineColor
//            ]
//            underlineAttributedString = NSAttributedString(string: b1.titleLabel?.text ?? "",attributes: labelAtributes)
//            b1.titleLabel?.attributedText =  underlineAttributedString
            b2.isSelected = false
//            labelAtributes = [
//                NSAttributedString.Key.underlineStyle: underLineStyle,
//                NSAttributedString.Key.underlineColor: underLineColor
//            ]
//            underlineAttributedString = NSAttributedString(string: b2.titleLabel?.text ?? "",attributes: labelAtributes)
//            b2.titleLabel?.attributedText =  underlineAttributedString
            b3.isSelected = false
//            labelAtributes = [
//                NSAttributedString.Key.underlineStyle: underLineStyle,
//                NSAttributedString.Key.underlineColor: underLineColor
//            ]
//            underlineAttributedString = NSAttributedString(string: b3.titleLabel?.text ?? "",attributes: labelAtributes)
//            b3.titleLabel?.attributedText =  underlineAttributedString
            b4.isSelected = false
//            labelAtributes = [
//                NSAttributedString.Key.underlineStyle: underLineStyle,
//                NSAttributedString.Key.underlineColor: underLineColor
//            ]
//            underlineAttributedString = NSAttributedString(string: b4.titleLabel?.text ?? "",attributes: labelAtributes)
//            b4.titleLabel?.attributedText =  underlineAttributedString
            b5.isSelected = false
//            labelAtributes = [
//                NSAttributedString.Key.underlineStyle: underLineStyle,
//                NSAttributedString.Key.underlineColor: underLineColor
//            ]
//            underlineAttributedString = NSAttributedString(string: b5.titleLabel?.text ?? "",attributes: labelAtributes)
//            b5.titleLabel?.attributedText =  underlineAttributedString
            b6.isSelected = false
//            labelAtributes = [
//                NSAttributedString.Key.underlineStyle: underLineStyle,
//                NSAttributedString.Key.underlineColor: underLineColor
//            ]
//            underlineAttributedString = NSAttributedString(string: b6.titleLabel?.text ?? "",attributes: labelAtributes)
//            b6.titleLabel?.attributedText =  underlineAttributedString
            sender.isSelected = true
        }
        
        if(sender.titleLabel?.text == "TEDx"){
            contenuto = structIns[0].pod
//            underLineColor = .red
        }
        if(sender.titleLabel?.text == "Movies&TVShows"){
            contenuto = structIns[0].well
//            underLineColor = .purple
        }
        if(sender.titleLabel?.text == "Articles"){
            contenuto = structIns[0].mov
//            underLineColor = .yellow
        }
        if(sender.titleLabel?.text == "Books"){
            contenuto = structIns[0].art
//            underLineColor = .systemPink
        }
        if(sender.titleLabel?.text == "Inspiring People"){
            contenuto = structIns[0].artists
//            underLineColor = .green
        }
        if(sender.titleLabel?.text == "Podcasts"){
            contenuto = structIns[0].books
//            underLineColor = .orange
        }
        
//        labelAtributes = [
//            NSAttributedString.Key.underlineStyle: underLineStyle,
//            NSAttributedString.Key.underlineColor: underLineColor
//        ]
//        underlineAttributedString = NSAttributedString(string: sender.titleLabel?.text ?? "",attributes: labelAtributes)
//        sender.titleLabel?.attributedText =  underlineAttributedString
        if(b1.isSelected == true){
            r1.isHidden = false
            r2.isHidden = true
            r3.isHidden = true
            r4.isHidden = true
            r5.isHidden = true
            r6.isHidden = true
        } else if(b2.isSelected == true){
            r1.isHidden = true
            r2.isHidden = false
            r3.isHidden = true
            r4.isHidden = true
            r5.isHidden = true
            r6.isHidden = true
        }else if(b3.isSelected == true){
            r1.isHidden = true
            r2.isHidden = true
            r3.isHidden = false
            r4.isHidden = true
            r5.isHidden = true
            r6.isHidden = true
        }else if(b4.isSelected == true){
            r1.isHidden = true
            r2.isHidden = true
            r3.isHidden = true
            r4.isHidden = false
            r5.isHidden = true
            r6.isHidden = true
        }else if(b5.isSelected == true){
            r1.isHidden = true
            r2.isHidden = true
            r3.isHidden = true
            r4.isHidden = true
            r5.isHidden = false
            r6.isHidden = true
        }else if(b6.isSelected == true){
            r1.isHidden = true
            r2.isHidden = true
            r3.isHidden = true
            r4.isHidden = true
            r5.isHidden = true
            r6.isHidden = false
        }
        
        myCollectionView.reloadData()
    }
}


class MyTap: UITapGestureRecognizer {
    var link = String()
}

