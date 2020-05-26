//
//  SecretCollection.swift
//  Scar
//
//  Created by Mattia Cardone on 02/05/2020.
//  Copyright © 2020 Mattia Cardone. All rights reserved.
//

import UIKit
import CloudKit

class SecretCollection: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    static var allImages: [UIImage]? = []
    static var allDescr: [String]? = []
    
    @IBOutlet weak var myCollectionView: UICollectionView!
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return SecretCollection.allImages?.count ?? 0
    }
    
    @objc func go(sender : MyTapGesture) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let secondVC = storyboard.instantiateViewController(withIdentifier: "image")  as! CaricaImage
        secondVC.id = sender.id
        self.navigationController?.pushViewController(secondVC, animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath) as! CollectionViewCell
        cell.myImageView.image = SecretCollection.allImages?[indexPath.row]
        let tap = MyTapGesture(target: self, action: #selector(self.go(sender:)))
        tap.id = indexPath.row
        cell.myImageView.isUserInteractionEnabled = true
        cell.myImageView.addGestureRecognizer(tap)
        return cell
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        overrideUserInterfaceStyle = .light

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
            if  error != nil {
                print("errore")
            } else {
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
    
class MyTapGesture: UITapGestureRecognizer {
    var id = Int()
}
