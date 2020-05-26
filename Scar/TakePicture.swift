//
//  ViewController.swift
//  Scar
//
//  Created by Mattia Cardone on 27/04/2020.
//  Copyright © 2020 Antonio Cimino. All rights reserved.
//

import UIKit

class TakePicture: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate  {
    
    var imagePicker: UIImagePickerController!
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        overrideUserInterfaceStyle = .light

        
        self.tabBarController?.tabBar.isHidden = false
        
        let boldText = "Take a picture of your indelible sign\n"
        let attributedString = NSMutableAttributedString(string:boldText)

        let normalText = "to draw "
        let attrs = [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 22, weight: .medium)]
        let normalString = NSMutableAttributedString(string:normalText, attributes:attrs)

               attributedString.append(normalString)
        
        let boldText2 = "its shape."
        let attributedString2 = NSMutableAttributedString(string:boldText2)
        
        attributedString.append(attributedString2)
        
               label.attributedText = attributedString
    }
    
    //Fai la foto.
    @IBAction func addImage(_ sender: Any) {
        imagePicker =  UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.sourceType = .camera

        present(imagePicker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        imagePicker.dismiss(animated: true, completion: nil)
        ViewController.imageScars = info[.originalImage] as? UIImage
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let secondVC = storyboard.instantiateViewController(withIdentifier: "Draw")  as! ViewController
    self.navigationController?.pushViewController(secondVC, animated: true)
    }
}
