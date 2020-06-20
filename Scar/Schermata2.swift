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

class Schermata2: UIViewController, UICollectionViewDataSource,UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    static var insights: [String] = ["","","","","",""]
    static var film: [String] = ["the%20theory%20of%20everything","shallow%20Hal","orange%20is%20new%20black","the%20shape%20of%20water","unBreakable","pose","glow","hairspray","unorthodox"]
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
    var structIns: [ins]!
    
    @IBOutlet weak var myCollectionView: UICollectionView!
    @IBOutlet weak var scroll: UIScrollView!
    
    var imgButt: String = ""
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return contenuto.count
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        let height = view.frame.size.height
        let width = view.frame.size.width
        return CGSize(width: width, height: height * 0.4)
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        if (kind == UICollectionView.elementKindSectionFooter) {
            let footerView = myCollectionView.dequeueReusableCell(withReuseIdentifier: "footer", for: indexPath) as! FooterCollectionView
            if(imgButt == "SeeMoreMovies"){
                footerView.image.image = UIImage(named: "tmb")
                footerView.text.text = "This product uses the TMDb API but\nis not endorsed or certified by TMDb."
            }else if(imgButt == "SeeMore"){
                footerView.image.image = UIImage(named: "tedx")
                let paragraphStyle = NSMutableParagraphStyle()
                paragraphStyle.alignment = NSTextAlignment.center
                let attributedString = NSMutableAttributedString(string: "This work is licensed under a Creative Commons Attribution-NonCommercial-NoDerivatives4.0 International License ")
                attributedString.setAttributes(
                    [NSAttributedString.Key.font : UIFont(name: "Poppins-ExtraLight", size: 8)!,
                     NSAttributedString.Key.foregroundColor : UIColor(red: 112 / 255.0, green: 112 / 255.0, blue: 112 / 255.0, alpha: 1.0),
                     NSAttributedString.Key.paragraphStyle : paragraphStyle
                    ], range: NSRange(location:0 , length:111)
                )
                attributedString.addAttribute(.link, value:"https://creativecommons.org/licenses/by-nc-nd/4.0/", range: NSRange(location: 30, length: 82))
                footerView.text.attributedText = attributedString
            } else if(imgButt == "SeeMoreBooks"){
                footerView.image.image = UIImage(named: "goodreeds")
                footerView.text.text = ""
            } else if(imgButt == "SeeMorePodcast"){
                footerView.image.image = UIImage(named: "Spotify")
                footerView.text.text = ""
            } else {
                footerView.text.text = ""
            }
            return footerView
        }
        fatalError()
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = myCollectionView.dequeueReusableCell(withReuseIdentifier: "ins", for: indexPath) as! InightsCollection
        cell.title.text = contenuto[indexPath.row].title
        cell.label.text = contenuto[indexPath.row].descr
        cell.fonte.text = contenuto[indexPath.row].fonte
        let tap = MyTap(target: self, action: #selector(self.goLink(sender:)))
        tap.link = contenuto[indexPath.row].link
        cell.button.isUserInteractionEnabled = true
        cell.button.addGestureRecognizer(tap)
        let image = UIImage(named: imgButt)
        cell.button.setImage(image, for: .normal)
        if(indexPath.row < contenuto.count - 1){
            cell.div.image = UIImage(named: "divisore")
        } else {
            cell.div.image = UIImage(named: "")
        }
        if(imgButt == "SeeMoreMovies" || imgButt == "SeeMore" || imgButt == "SeeMoreBooks" || imgButt == "SeeMorePodcast"){
            if(indexPath.row == contenuto.count - 1){
                cell.div.image = UIImage(named: "divisore")
            }
        }
        if(imgButt == "SeeMoreMovies"){
            if(indexPath.row < Schermata2.film.count){
                if let dir = try? FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false) {
                cell.image.image = UIImage(contentsOfFile: URL(fileURLWithPath: dir.absoluteString).appendingPathComponent(Schermata2.film[indexPath.row] + ".png").path)
                }
            }
        } else {
            cell.image.image = UIImage(named: contenuto[indexPath.row].image)
        }
        
        let tap1 = MyTap(target: self, action: #selector(self.goLink(sender:)))
        tap1.link = contenuto[indexPath.row].link
        cell.image.isUserInteractionEnabled = true
        cell.image.addGestureRecognizer(tap1)
        
//        cell.label.font = UIFont(name: ".SFUI-Light", size: 18)
        print("\n\n\n\n\n\n\(cell.label.font)\n\n\n\n\n\n")
        
        return cell
    }
    
    @objc func goLink(sender : MyTap) {
        if let url = NSURL(string: sender.link){
            UIApplication.shared.open(url as URL)
        }
     }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        overrideUserInterfaceStyle = .light
        
        var db: OpaquePointer?
                    
        //Si connette al DB
        let fileURL = try!
        FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false).appendingPathComponent("Database.sqlite")
        if sqlite3_open(fileURL.path, &db) != SQLITE_OK {
            print("error opening database")
        }
                  
        //Recupera Valore
        var stmt: OpaquePointer?
        let queryString = "SELECT * FROM Lingua"
        if sqlite3_prepare(db, queryString, -1, &stmt, nil) != SQLITE_OK{
        let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error preparing insert: \(errmsg)")
            return
        }
        
        var lingua = ""
        while(sqlite3_step(stmt) == SQLITE_ROW){
            lingua = String(cString: sqlite3_column_text(stmt, 1))
        }
        
        if(lingua == "eng"){
            structIns = ENG.structInsENG
        } else if (lingua == "ita"){
            structIns = ITA.structInsITA
        }
        
        caricaInfo()

        if(Schermata2.insights[0] != ""){
           if(Schermata2.insights[0] == "TEDx"){
                contenuto = structIns[0].pod
                self.imgButt = "SeeMore"
            }
            if(Schermata2.insights[0] == "Movies and Series"){
                contenuto = structIns[0].well
                self.imgButt = "SeeMoreMovies"
            }
            if(Schermata2.insights[0] == "Articles"){
                contenuto = structIns[0].mov
                self.imgButt = "SeeMoreArticle"
            }
            if(Schermata2.insights[0] == "Books"){
                contenuto = structIns[0].art
                self.imgButt = "SeeMoreBooks"
            }
            if(Schermata2.insights[0] == "Inspiring People"){
                contenuto = structIns[0].artists
                self.imgButt = "SeeMoreInspiringPeople"
            }
            if(Schermata2.insights[0] == "Podcasts"){
                contenuto = structIns[0].books
                self.imgButt = "SeeMorePodcast"
            }
           
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
            b1.titleLabel?.font = UIFont(name: "Poppins-Medium", size: 20)
            b2.isSelected = false
            b2.titleLabel?.font = UIFont(name: "Poppins-ExtraLight", size: 20)
            b3.isSelected = false
            b3.titleLabel?.font = UIFont(name: "Poppins-ExtraLight", size: 20)
            b4.isSelected = false
            b4.titleLabel?.font = UIFont(name: "Poppins-ExtraLight", size: 20)
            b5.isSelected = false
            b5.titleLabel?.font = UIFont(name: "Poppins-ExtraLight", size: 20)
            b6.isSelected = false
            b6.titleLabel?.font = UIFont(name: "Poppins-ExtraLight", size: 20)
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
        
        var somma: CGFloat = 0
        b1.setTitle(Schermata2.insights[0], for: .normal)
        somma = somma + (15 * CGFloat(Schermata2.insights[0].count))
        b1.frame.size.width = 15 * CGFloat(Schermata2.insights[0].count)
        r1.image = UIImage(named: Schermata2.insights[0])
        r1.isHidden = false
                     
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
        
        if(Schermata2.insights[0] != ""){
            if(Schermata2.insights[0] == "TEDx"){
                contenuto = structIns[0].pod
                self.imgButt = "SeeMore"
            }
            if(Schermata2.insights[0] == "Movies and Series"){
                contenuto = structIns[0].well
                self.imgButt = "SeeMoreMovies"
            }
            if(Schermata2.insights[0] == "Articles"){
                contenuto = structIns[0].mov
                self.imgButt = "SeeMoreArticle"
            }
            if(Schermata2.insights[0] == "Books"){
                contenuto = structIns[0].art
                self.imgButt = "SeeMoreBooks"
            }
            if(Schermata2.insights[0] == "Inspiring People"){
                contenuto = structIns[0].artists
                self.imgButt = "SeeMoreInspiringPeople"
            }
            if(Schermata2.insights[0] == "Podcasts"){
                contenuto = structIns[0].books
                self.imgButt = "SeeMorePodcast"
            }


            b1.isSelected = true
            b1.titleLabel?.font = UIFont(name: "Poppins-Medium", size: 20)
            b2.isSelected = false
            b2.titleLabel?.font = UIFont(name: "Poppins-ExtraLight", size: 20)
            b3.isSelected = false
            b3.titleLabel?.font = UIFont(name: "Poppins-ExtraLight", size: 20)
            b4.isSelected = false
            b4.titleLabel?.font = UIFont(name: "Poppins-ExtraLight", size: 20)
            b5.isSelected = false
            b5.titleLabel?.font = UIFont(name: "Poppins-ExtraLight", size: 20)
            b6.isSelected = false
            b6.titleLabel?.font = UIFont(name: "Poppins-ExtraLight", size: 20)
            myCollectionView.reloadData()
        }
    }

    @IBAction func setTable(_ sender: UIButton) {
        if !sender.isSelected {
            b1.isSelected = false
            b1.titleLabel?.font = UIFont(name: "Poppins-ExtraLight", size: 20)
            b2.isSelected = false
            b2.titleLabel?.font = UIFont(name: "Poppins-ExtraLight", size: 20)
            b3.isSelected = false
            b3.titleLabel?.font = UIFont(name: "Poppins-ExtraLight", size: 20)
            b4.isSelected = false
            b4.titleLabel?.font = UIFont(name: "Poppins-ExtraLight", size: 20)
            b5.isSelected = false
            b5.titleLabel?.font = UIFont(name: "Poppins-ExtraLight", size: 20)
            b6.isSelected = false
            b6.titleLabel?.font = UIFont(name: "Poppins-ExtraLight", size: 20)
            sender.isSelected = true
            sender.titleLabel?.font = UIFont(name: "Poppins-Medium", size: 20)
        }
        
        if(sender.titleLabel?.text == "TEDx"){
            contenuto = structIns[0].pod
            self.imgButt = "SeeMore"
        }
        if(sender.titleLabel?.text == "Movies and Series"){
            contenuto = structIns[0].well
            self.imgButt = "SeeMoreMovies"
        }
        if(sender.titleLabel?.text == "Articles"){
            contenuto = structIns[0].mov
            self.imgButt = "SeeMoreArticle"
        }
        if(sender.titleLabel?.text == "Books"){
            contenuto = structIns[0].art
            self.imgButt = "SeeMoreBooks"
        }
        if(sender.titleLabel?.text == "Inspiring People"){
            contenuto = structIns[0].artists
            self.imgButt = "SeeMoreInspiringPeople"
        }
        if(sender.titleLabel?.text == "Podcasts"){
            contenuto = structIns[0].books
            self.imgButt = "SeeMorePodcast"
        }
        
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


