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
        Cont(image: "insight1", title:"How to Build Self Confidence", descr: "CeCe Olisa is a body positivity expert who creates popular plus-size workout videos on her YouTube channel, encouraging women to train because they love their bodies and not because they hate them.", fonte:"CeCe Olisa | TEDxFresnoState", link: "https://www.youtube.com/watch?v=ivNNgdCsY7o"),
        Cont(image: "insight2", title:"Stop hating your body; start living your life", descr: "Taryn Brumfitt is a vary famous body image activist. This talk makes us understand that it is not our body that is wrong but our perspective and the unrealistic standards that surround us.", fonte:"Taryn Brumfitt | TEDxAdelaide", link: "https://www.youtube.com/watch?v=LSMH3WABkwg"), Cont(image: "insight3", title:"Own your face", descr: "Robert Hodge is political advisor and author of the book 'Ugly'. With great humor he speaks of love, life and above all of the imperfection and pain that characterized his personal experience.", fonte:"Robert Hodge | TedxSouthBank", link: "https://www.youtube.com/watch?v=QbxinUJcLGg"), Cont(image: "insight4", title:"My Scar is Sexy: Thrive Talk featuring", descr: "Christina Helena is a writer, speaker and performer. She redefines the stigma behind the trauma with one thought: your scar is the sexiest thing about you.", fonte:"Christina Helena", link: "https://www.youtube.com/watch?v=GrQbEMwhES0&t=68s"), Cont(image: "insight5", title:"Have you hated your body enough today?", descr: "Michelle is the creator of the #ScarredNotScared campaign, a community that teach women to appreciate their bodies and scars. In this talk she tells us that changing the relationship with our body can radically change our life.", fonte:"Michelle Elman | TEDxCoventGardenWomen", link: "https://www.youtube.com/watch?v=d88uXMWSVfU"), Cont(image: "insight6", title:"Yes, my scars do define me", descr: "TGebran is a marketing and advertising student and his biggest dream is to become a writer. He says that our life is like a book of stories but ... have we ever wondered what makes a story beautiful?", fonte:"Gebran Abou Zeid | TEDxNDULouaize", link: "https://www.youtube.com/watch?v=LSMH3WABkwg"), Cont(image: "insight7", title:"Behind the ScarsBehind the Scars", descr: "Sophie Mayanne is a photographer, her unmistakable style is extraordinary in 'Behind The Scars', a project that celebrates scars of all shapes and sizes and the incredible stories behind them.", fonte:"Sophie Mayanne | TEDxLeidenUniversity", link: "https://www.youtube.com/watch?v=_3orJwoshTQ"), Cont(image: "insight8", title:"From Scars to Strength: The Poetry of Recovery", descr: "Bianca is a power-house emcee, poet, digital composer, cultural activist and educator. In this intimate talk she shares her insights on self-awareness, recovery and the importance of training for mental health.", fonte:"Bianca Mikahn | TEDxBoulder", link: "https://www.youtube.com/watch?v=9TPmRcfv3TQ&feature=youtu.be"), Cont(image: "insight9", title:"Who are you, really? The puzzle of personality", descr: "What makes you, you? In this talk Brian Little, a Cambridge research professor, analyzes and redefines the threads of our personalities and suggests ways in which we can transform ourselves.", fonte:"Brian Little", link: "https://www.youtube.com/watch?v=qYvXk_bqlBk"), Cont(image: "insight10", title:"You are not alone in your loneliness", descr: "Jonny is a Canadian author and illustrator. In this talk he says that telling story and being open with our loneliness and fear can help us find comfort and feel less alone.", fonte:"Jonny Sun", link: "https://www.youtube.com/watch?v=gi6rMXu_veE"), Cont(image: "insight11", title:"3 tips to boost your confidence", descr: "We actually have the power to cultivate our own confidence, but where does confidence come from and how can we get more? In this video, there are three easy tips to boost your confidence.", fonte:"TED-Ed", link: "https://www.youtube.com/watch?v=l_NYrWqUR40")],
    well:[
        Cont(image: "insight3", title:"Stop hating your body; start living your life ", descr: "Taryn Brumfitt is a vary famous body image activist. This talk makes us understand that it is not our body that is wrong but our perspective and the unrealistic standards that surround us.", fonte:"f", link: "https://www.youtube.com/watch?v=LSMH3WABkwg"),
        Cont(image: "insight4", title:"t", descr: "esempio Wellbein", fonte:"f", link: "https://www.google.com/?client=safari")],
    mov:[
        Cont(image: "insight3", title:"t", descr: "esempio Movies", fonte:"f", link: "https://www.google.com/?client=safari"),
        Cont(image: "2-.jpg", title:"t", descr: "esempio Movies", fonte:"f", link: "https://www.google.com/?client=safari")],
    art:[
        Cont(image: "insight4", title:"t", descr: "esempio Articols", fonte:"f", link: "https://www.google.com/?client=safari"),
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

        if(Schermata2.insights[0] != ""){
           if(Schermata2.insights[0] == "TEDx"){
                contenuto = structIns[0].pod
            }
            if(Schermata2.insights[0] == "Movies&TVShows"){
                contenuto = structIns[0].well
            }
            if(Schermata2.insights[0] == "Articles"){
                contenuto = structIns[0].mov
            }
            if(Schermata2.insights[0] == "Books"){
                contenuto = structIns[0].art
            }
            if(Schermata2.insights[0] == "Inspiring People"){
                contenuto = structIns[0].artists
            }
            if(Schermata2.insights[0] == "Podcasts"){
                contenuto = structIns[0].books
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
            }
            if(Schermata2.insights[0] == "Movies&TVShows"){
                contenuto = structIns[0].well
            }
            if(Schermata2.insights[0] == "Articles"){
                contenuto = structIns[0].mov
            }
            if(Schermata2.insights[0] == "Books"){
                contenuto = structIns[0].art
            }
            if(Schermata2.insights[0] == "Inspiring People"){
                contenuto = structIns[0].artists
            }
            if(Schermata2.insights[0] == "Podcasts"){
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
        if !sender.isSelected {
            b1.isSelected = false
            b2.isSelected = false
            b3.isSelected = false
            b4.isSelected = false
            b5.isSelected = false
            b6.isSelected = false
            sender.isSelected = true
        }
        
        if(sender.titleLabel?.text == "TEDx"){
            contenuto = structIns[0].pod
        }
        if(sender.titleLabel?.text == "Movies&TVShows"){
            contenuto = structIns[0].well
        }
        if(sender.titleLabel?.text == "Articles"){
            contenuto = structIns[0].mov
        }
        if(sender.titleLabel?.text == "Books"){
            contenuto = structIns[0].art
        }
        if(sender.titleLabel?.text == "Inspiring People"){
            contenuto = structIns[0].artists
        }
        if(sender.titleLabel?.text == "Podcasts"){
            contenuto = structIns[0].books
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

