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

class PostCollage: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    static var allImages: [UIImage]? = []
    @IBOutlet weak var viewL: UIView!
     var m = 0
    @IBOutlet weak var miniSym: UIImageView!
    
    @IBOutlet weak var myCollectionView: UICollectionView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
//        let sh = Collage()
//        miniSym.image = sh.screen?.image
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return SecretCollection.allImages?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath) as! CollectionViewCell
        cell.layer.borderColor = (UIColor.init(named: "#2E2933")?.cgColor)
        cell.layer.borderWidth = 0.8
        cell.myImageView.image = SecretCollection.allImages?[indexPath.row]
        return cell
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        overrideUserInterfaceStyle = .light
        
        miniSym.layer.borderWidth = 0.6
        miniSym.layer.masksToBounds = true
        miniSym.layer.borderColor = (UIColor.init(named: "#2E2933")?.cgColor)
        miniSym.layer.cornerRadius = miniSym.frame.size.width/2
        miniSym.clipsToBounds = true
        if let dir = try? FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false) {
        miniSym.image = UIImage(contentsOfFile: URL(fileURLWithPath: dir.absoluteString).appendingPathComponent("collage").path)
        }
        
        
        let layout = UICollectionViewFlowLayout()
        layout.minimumInteritemSpacing = 3
        layout.minimumLineSpacing = 3
        
        myCollectionView.collectionViewLayout = layout
        
        var db: OpaquePointer?
        var stmt: OpaquePointer?

        //Si connette al DB
        let fileURL = try!
        FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false).appendingPathComponent("Database.sqlite")
        if sqlite3_open(fileURL.path, &db) != SQLITE_OK {
            print("error opening database")
        }

        
        //Recupera Valore
        var d = ""
        let queryString = "SELECT * FROM Collage"
        if sqlite3_prepare(db, queryString, -1, &stmt, nil) != SQLITE_OK{
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error preparing insert: \(errmsg)")
            return
        }
        while(sqlite3_step(stmt) == SQLITE_ROW && m < 1){
            d = String(cString: sqlite3_column_text(stmt, 1))
            m = m + 1
            print(d)
        }
        
        
        //Confronta Valore
        if(d == "si"){}
        else {
            viewL.isHidden = true
            _ = UIScreen.main.bounds.width/3 - 5
            let layout = UICollectionViewFlowLayout()
            layout.sectionInset = UIEdgeInsets(top: 20, left: 3, bottom: 10, right: 0)
            layout.itemSize = CGSize(width: 115, height: 115)
            layout.minimumLineSpacing = 5
            layout.minimumInteritemSpacing = 5
            myCollectionView.collectionViewLayout = layout
        
            let dataBase = CKContainer.default().publicCloudDatabase
            let predicate = NSPredicate(value: true)
            let query = CKQuery(recordType: "PublicInfo", predicate: predicate)
            dataBase.perform(query, inZoneWith: nil) { (results, error) -> Void in
                if  error != nil {print("errore")}
                else {
                    if results!.count > 0 {
                        for i in 0...results!.count-1{
                            let record = results![i]
                            DispatchQueue.main.async{
                                let d = record.object(forKey: "Description") as! String
                                SecretCollection.allDescr?.append(d)
                                let image = record.object(forKey: "Photo") as! CKAsset
                                SecretCollection.allImages?.append(UIImage(contentsOfFile: image.fileURL!.path)!)
                                self.myCollectionView.reloadData()
                            }
                        }
                    }
                }
            }
        }
    }
}


