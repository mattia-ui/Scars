//
//  ViewControllerInitial.swift
//  Scar
//
//  Created by Mattia Cardone on 05/05/2020.
//  Copyright © 2020 Mattia Cardone. All rights reserved.
//

import UIKit
import SQLite3

struct ContenutoStruct {
    var contenuto: String
    var titolo: String
}

struct ActivityStruct {
    var attivita1: [ContenutoStruct]
    var attivita2: [ContenutoStruct]
    var attivita3: [ContenutoStruct]
    var attivita4: [ContenutoStruct]
    var attivita5: [ContenutoStruct]
    var attivita6: [ContenutoStruct]
    var attivita7: [ContenutoStruct]
    var attivita8: [ContenutoStruct]
    var attivita9: [ContenutoStruct]
}

var dati = [ActivityStruct(
    attivita1:[
        ContenutoStruct(contenuto: "Doing mirror work is one of the most loving gifts you can give yourself. Remember that the more you use your mirror for complimenting and supporting yourself, the deeper and more pleasant your relationship with yourself will become.\n\nHere are three simple steps for mastering your mirror work in practice!" , titolo: "Your mirror is your friend" ),
        ContenutoStruct(contenuto:"Using a handheld mirror allows you to get closer to the most intimate part of yourself. Just make sure you're in a place where nobody can bother you!" , titolo: "1. Get a handheld mirror" ),
        ContenutoStruct(contenuto: "Start by making eye contact with yourself in the mirror and don't worry if at first this may seem a little uncomfortable.", titolo: "2. Make eye contact"),
        ContenutoStruct(contenuto: "Now begin to say some of your favorite affirmations out loud or just start a conversation with yourself. It’s so important to give yourself little positive messages, say anything that makes you feel really good!", titolo: "3. give yourself positive messages out loud")],
    attivita2:
        [ContenutoStruct(contenuto: "", titolo: "")],
    attivita3:
        [ContenutoStruct(contenuto: "", titolo: "")],
    attivita4:
        [ContenutoStruct(contenuto: "", titolo: "")],
    attivita5:
        [ContenutoStruct(contenuto: "", titolo: "")],
    attivita6:
        [ContenutoStruct(contenuto: "", titolo: "")],
    attivita7:
        [ContenutoStruct(contenuto: "", titolo: "")],
    attivita8:
        [ContenutoStruct(contenuto: "", titolo: "")],
    attivita9:
        [ContenutoStruct(contenuto: "", titolo: "")]
)]

class ViewControllerInitial: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    var id1: Int!
    
    @IBOutlet weak var collection: UICollectionView!
    @IBOutlet weak var cardImage: UIImageView!
    var attivita: [ContenutoStruct] = []
    var sfondi: [String] = ["2-.jpg","","","","",""]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return attivita.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collection.dequeueReusableCell(withReuseIdentifier: "celle", for: indexPath) as! TableViewActivity
        cell.titolo.text = attivita[indexPath.row].titolo
        cell.contenuto.text = attivita[indexPath.row].contenuto
        cell.button.addTarget(self, action: #selector(buttonAction), for: .touchDown)
        if(indexPath.row != attivita.count - 1){
            cell.button.isHidden = true
        }
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        switch id1 {
            case 0: attivita = dati[0].attivita1
            case 1: attivita = dati[0].attivita2
            case 2: attivita = dati[0].attivita3
            case 3: attivita = dati[0].attivita4
            case 4: attivita = dati[0].attivita5
            case 5: attivita = dati[0].attivita6
            case 6: attivita = dati[0].attivita7
            case 7: attivita = dati[0].attivita8
            default: attivita = dati[0].attivita9
        }
        cardImage.image = UIImage(named: sfondi[id1])

    }
    
    @IBAction func buttonAction(_ sender: Any) {
        var db: OpaquePointer?

        //Si connette al DB
        let fileURL = try!
        FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false).appendingPathComponent("Database.sqlite")
        if sqlite3_open(fileURL.path, &db) != SQLITE_OK {
            print("error opening database")
        }
            
        //Update Valore
        var stmt: OpaquePointer?
        var att = ""
        switch id1 {
            case 0: att = "c1"
            case 1: att = "c2"
            case 2: att = "c3"
            case 3: att = "c4"
            case 4: att = "c5"
            case 5: att = "c6"
            case 6: att = "c7"
            case 7: att = "c8"
            default: att = "c9"
        }
        let queryString = "UPDATE InfoSchermata1 SET \(att) = 'checked';"
        sqlite3_prepare(db, queryString, -1, &stmt, nil)
        sqlite3_step(stmt)
        print("Saved successfully")
        
        let secondVC = storyboard?.instantiateViewController(withIdentifier: "collectionInitial")  as! Schermata1
        self.navigationController?.pushViewController(secondVC, animated: true)
        
    }
    
}
