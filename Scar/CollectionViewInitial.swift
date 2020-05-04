//
//  CollectionViewInitial.swift
//  Scar
//
//  Created by Mattia Cardone on 05/05/2020.
//  Copyright © 2020 Mattia Cardone. All rights reserved.
//

import UIKit

class MyTapGesture1: UITapGestureRecognizer {
    var id = Int()
}

class CollectionViewInitial: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    var allImages: [String] = ["unchecked","unchecked","unchecked","unchecked","unchecked"]
//    var allImages1: [String] = ["checked"]
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return allImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath) as! CollectionViewCell1
        
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
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        // Do any additional setup after loading the view.
    }
    
    @objc func go(sender : MyTapGesture) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let secondVC = storyboard.instantiateViewController(withIdentifier: "image")  as! ViewControllerInitial
        secondVC.id = sender.id
        self.navigationController?.pushViewController(secondVC, animated: true)
    }


}


