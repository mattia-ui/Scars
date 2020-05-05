//
//  SecretCollection.swift
//  Scar
//
//  Created by Mattia Cardone on 02/05/2020.
//  Copyright © 2020 Mattia Cardone. All rights reserved.
//

import UIKit
import CloudKit


class MyTapGesture1: UITapGestureRecognizer {
    var id1 = Int()
}

class Schermata1: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    var i = 1
    @IBOutlet weak var activity: UICollectionView!
    var allImages: [String] = ["unchecked","unchecked","unchecked","unchecked","unchecked"]
//    var allImages1: [String] = ["checked"]
    
    @IBAction func secret(_ sender: Any) {
        if(i == 15){
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let secondVC = storyboard.instantiateViewController(withIdentifier: "pass")  as! Password
            self.navigationController?.pushViewController(secondVC, animated: true)
        } else {
            i = i + 1
        }
    }
  
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return allImages.count
    }
        
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = activity.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath) as! CollectionViewCell1
        cell.cardsImage.image = UIImage(named: allImages[indexPath.row] + ".png")
        let tap = MyTapGesture(target: self, action: #selector(self.go(sender:)))
        tap.id = indexPath.row
        cell.cardsImage.isUserInteractionEnabled = true
        cell.cardsImage.addGestureRecognizer(tap)
        return cell
    }
        
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            
        let cellWidth = 114
        let cellHeight = 164
        return CGSize(width: cellWidth, height: cellHeight)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(false, animated: animated);
        super.viewWillDisappear(animated)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
        

    override func viewDidLoad() {
        super.viewDidLoad()
        
            UserDefaults.standard.set(true, forKey: "LaunchedBefore")
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
    }
    
    @objc func go(sender : MyTapGesture) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let secondVC = storyboard.instantiateViewController(withIdentifier: "imageColl")  as! ViewControllerInitial
        secondVC.id1 = sender.id
        self.navigationController?.pushViewController(secondVC, animated: true)
    }
    
}

