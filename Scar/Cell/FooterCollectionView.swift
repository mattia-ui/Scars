//
//  CollectionViewCell.swift
//  Scar
//
//  Created by Mattia Cardone on 02/05/2020.
//  Copyright © 2020 Mattia Cardone. All rights reserved.
//

import UIKit

class FooterCollectionView: UICollectionViewCell {
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var text: UITextView!
    
    func textView(_ textView: UITextView, shouldInteractWith URL: URL, in characterRange: NSRange, interaction: UITextItemInteraction) -> Bool {
        UIApplication.shared.open(URL)
        return false
    }
}
