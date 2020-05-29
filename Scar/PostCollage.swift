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
    
    var blur = 0
    @IBOutlet weak var viewPerBlur: UIView!
    @IBOutlet weak var viewSulBlur: UIView!
    static var allImages: [UIImage]? = []
    @IBOutlet weak var viewL: UIView!
     var m = 0
    @IBOutlet weak var miniSym: UIImageView!
    
    @IBOutlet weak var myCollectionView: UICollectionView!
     var blurEffect = UIBlurEffect()
      var blurEffectView = UIVisualEffectView()
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
        if(blur == 1){
           blurEffect = UIBlurEffect(style: UIBlurEffect.Style.light)
          blurEffectView = UIVisualEffectView(effect: blurEffect)
            blurEffectView.frame = viewPerBlur.bounds
            blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
            blurEffectView.alpha = 1
            viewPerBlur.addSubview(blurEffectView)
            viewSulBlur.isHidden = false
            self.tabBarController?.tabBar.isHidden = true
            
            let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.tapped))
                   view.addGestureRecognizer(tap)
        }
        
      
//        let sh = Collage()
//        miniSym.image = sh.screen?.image
    }
    @objc func tapped(){
        viewSulBlur.isHidden = true
        blurEffectView.alpha = 0
        viewPerBlur.addSubview(blurEffectView)
        self.tabBarController?.tabBar.isHidden = false
        blur = 0

          }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return SecretCollection.allImages?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath) as! CollectionViewCell
        cell.layer.borderColor = (UIColor.init(named: "#2E2933")?.cgColor)
        cell.layer.borderWidth = 0.3
        cell.myImageView.image = SecretCollection.allImages?[indexPath.row]
        return cell
    }
    
    @objc func imageTapped(tapGestureRecognizer: UITapGestureRecognizer)
    {
        _ = tapGestureRecognizer.view as! UIImageView

        performSegue(withIdentifier: "vai", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        overrideUserInterfaceStyle = .light
        
        miniSym.layer.borderWidth = 0.3
        miniSym.layer.masksToBounds = true
        miniSym.layer.borderColor = (UIColor.init(named: "#2E2933")?.cgColor)
        miniSym.layer.cornerRadius = miniSym.frame.size.width/2
        miniSym.clipsToBounds = true
        if let dir = try? FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false) {
            miniSym.image = UIImage(contentsOfFile: URL(fileURLWithPath: dir.absoluteString).appendingPathComponent("collage").path)?.imageWithInsets(insets: UIEdgeInsets(top: 40, left: 75, bottom: 65, right: 75))
            viewSulBlur.isHidden = true
            
            let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
            miniSym.isUserInteractionEnabled = true
            miniSym.addGestureRecognizer(tapGestureRecognizer)
           
        }
        
        
        
        
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
            _ = UIScreen.main.bounds.width/3 - 3
            let layout = UICollectionViewFlowLayout()
            layout.sectionInset = UIEdgeInsets(top: 17, left: 7, bottom: 17, right: 7)
            layout.itemSize = CGSize(width: 131, height: 127)
            layout.minimumLineSpacing = 3
            layout.minimumInteritemSpacing = 1
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

extension UIImage {
func imageWithInsets(insets: UIEdgeInsets) -> UIImage? {
    UIGraphicsBeginImageContextWithOptions(
        CGSize(width: self.size.width + insets.left + insets.right,
               height: self.size.height + insets.top + insets.bottom), false, self.scale)
    let _ = UIGraphicsGetCurrentContext()
    let origin = CGPoint(x: insets.left, y: insets.top)
    self.draw(at: origin)
    let imageWithInsets = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()
    return imageWithInsets
}
}
