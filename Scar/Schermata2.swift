//
//  SecretCollection.swift
//  Scar
//
//  Created by Mattia Cardone on 02/05/2020.
//  Copyright © 2020 Mattia Cardone. All rights reserved.
//

import UIKit

struct Cont {
    var image: String
    var descr: String
    var link: String
}

struct ins {
    var pod: [Cont]
    var well: [Cont]
    var mov: [Cont]
    var art: [Cont]
    var artists: [Cont]
}

var structIns = [ins(
    pod:[
        Cont(image: "2-.jpg", descr: "esempio Podcast", link: "https://www.google.com/?client=safari"),
        Cont(image: "2-.jpg", descr: "esempio Podcast", link: "https://www.google.com/?client=safari")],
    well:[
        Cont(image: "2-.jpg", descr: "esempio Wellbein", link: "https://www.google.com/?client=safari"),
        Cont(image: "2-.jpg", descr: "esempio Wellbein", link: "https://www.google.com/?client=safari")],
    mov:[
        Cont(image: "2-.jpg", descr: "esempio Movies", link: "https://www.google.com/?client=safari"),
        Cont(image: "2-.jpg", descr: "esempio Movies", link: "https://www.google.com/?client=safari")],
    art:[
        Cont(image: "2-.jpg", descr: "esempio Articols", link: "https://www.google.com/?client=safari"),
        Cont(image: "2-.jpg", descr: "esempio Articols", link: "https://www.google.com/?client=safari")],
    artists:[
        Cont(image: "2-.jpg", descr: "esempio Artistis", link: "https://www.google.com/?client=safari"),
        Cont(image: "2-.jpg", descr: "esempio Artistis", link: "https://www.google.com/?client=safari")
    ]
)]

class Schermata2: UIViewController, UICollectionViewDataSource,UICollectionViewDelegate {
    
    static var insights: [String] = ["","","","",""]
    var contenuto: [Cont] = []
    
    
    @IBOutlet weak var b1: UIButton!
    @IBOutlet weak var b2: UIButton!
    @IBOutlet weak var b3: UIButton!
    @IBOutlet weak var b4: UIButton!
    @IBOutlet weak var b5: UIButton!
    
    @IBOutlet weak var myCollectionView: UICollectionView!
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return contenuto.count
    }


    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = myCollectionView.dequeueReusableCell(withReuseIdentifier: "ins", for: indexPath) as! InightsCollection
        cell.image.image = UIImage(named: contenuto[indexPath.row].image)
        cell.label.text = contenuto[indexPath.row].descr
        let tap = MyTap(target: self, action: #selector(self.goLink(sender:)))
        tap.link = contenuto[indexPath.row].link
        cell.button.isUserInteractionEnabled = true
        cell.button.addGestureRecognizer(tap)
        return cell
    }
    
    @objc func goLink(sender : MyTap) {
        if let url = NSURL(string: sender.link){
            UIApplication.shared.openURL(url as URL)
        }
     }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        b1.setTitle(Schermata2.insights[0], for: .normal)
        b2.setTitle(Schermata2.insights[1], for: .normal)
        b3.setTitle(Schermata2.insights[2], for: .normal)
        b4.setTitle(Schermata2.insights[3], for: .normal)
        b5.setTitle(Schermata2.insights[4], for: .normal)
    }
    
    
    @IBAction func setTable(_ sender: UIButton) {
        if(sender.titleLabel?.text == "Podcast"){
            contenuto = structIns[0].pod
            if !sender.isSelected {
                sender.isSelected = true
                b2.isSelected = false
                b3.isSelected = false
                b4.isSelected = false
                b5.isSelected = false
            }
        }
        if(sender.titleLabel?.text == "Wellbein"){
            contenuto = structIns[0].well
            if !sender.isSelected {
                sender.isSelected = true
                b1.isSelected = false
                b3.isSelected = false
                b4.isSelected = false
                b5.isSelected = false
            }
        }
        if(sender.titleLabel?.text == "Movies"){
            contenuto = structIns[0].mov
            if !sender.isSelected {
                sender.isSelected = true
                b2.isSelected = false
                b1.isSelected = false
                b4.isSelected = false
                b5.isSelected = false
            }
        }
        if(sender.titleLabel?.text == "Articols"){
            contenuto = structIns[0].art
            if !sender.isSelected {
                sender.isSelected = true
                b2.isSelected = false
                b3.isSelected = false
                b1.isSelected = false
                b5.isSelected = false
            }
        }
        if(sender.titleLabel?.text == "Artists"){
            contenuto = structIns[0].artists
            if !sender.isSelected {
                sender.isSelected = true
                b2.isSelected = false
                b3.isSelected = false
                b4.isSelected = false
                b1.isSelected = false
            }
        }
        myCollectionView.reloadData()
    }
}


class MyTap: UITapGestureRecognizer {
    var link = String()
}
