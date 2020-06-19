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
    
    @IBOutlet weak var question: UILabel!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var immagine: UIImageView!
    @IBOutlet weak var camera: UIButton!
    @IBOutlet weak var penna: UIButton!
    @IBOutlet weak var label3: UILabel!
    
    
    func traslate(view: UIView, aCircleTime: Double, to: CGFloat) {
           print(view.frame.origin.x)
           UIView.animate(withDuration: aCircleTime, animations: {
               () -> Void in view.transform = CGAffineTransform(translationX: 0, y: to)
           })
       }
       
       override func viewWillAppear(_ animated: Bool) {
           super.viewWillAppear(animated)
           self.navigationController?.setNavigationBarHidden(true, animated: animated)

                   if(view.frame.height == 812){
                   }else if(view.frame.height == 667){
                       traslate(view: question, aCircleTime: 0, to: -35)
                       traslate(view: label, aCircleTime: 0, to: -35)
                       traslate(view: label2, aCircleTime: 0, to: -47)
                       traslate(view: immagine, aCircleTime: 0, to: -60)
                       traslate(view: camera, aCircleTime: 0, to: -90)
                       traslate(view: penna, aCircleTime: 0, to: -90)
                       traslate(view: label3, aCircleTime: 0, to: -93)
                   }else if(view.frame.height == 736){
                    traslate(view: question, aCircleTime: 0, to: -35)
                    traslate(view: label, aCircleTime: 0, to: -35)
                    traslate(view: label2, aCircleTime: 0, to: -47)
                    traslate(view: immagine, aCircleTime: 0, to: -60)
                    traslate(view: camera, aCircleTime: 0, to: -95)
                    traslate(view: penna, aCircleTime: 0, to: -95)
                    traslate(view: label3, aCircleTime: 0, to: -103)
        }
       }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        overrideUserInterfaceStyle = .light

        
        self.tabBarController?.tabBar.isHidden = false
        
        

        let normalText = "Draw the shape "
         let attrs = [NSAttributedString.Key.font : UIFont(name: "Poppins-SemiBold", size: 20)]
        let attributedString = NSMutableAttributedString(string:normalText, attributes:attrs)
        
        let boldText = "of your indelible sign, or help yourself taking a "
        let normalString = NSMutableAttributedString(string:boldText)

               attributedString.append(normalString)
        
        let boldText2 = "picture "
        let attributedString2 = NSMutableAttributedString(string:boldText2, attributes:attrs)
        
        attributedString.append(attributedString2)
        
        let boldText1 = "of it to better "
        let normalString1 = NSMutableAttributedString(string:boldText1)

               attributedString.append(normalString1)
        
        let boldText3 = "trace it."
        let attributedString3 = NSMutableAttributedString(string:boldText3, attributes:attrs)
        
        attributedString.append(attributedString3)
        
        
        label.attributedText = attributedString
        
        let normalText2 = "Don’t worry"
        let attrs2 = [NSAttributedString.Key.font : UIFont(name: "Poppins-LightItalic", size: 18)]
        let attributedString4 = NSMutableAttributedString(string:normalText2, attributes:attrs2 as [NSAttributedString.Key : Any])
        
        
        let boldText4 = ", the picture you make won’t be stored in the app!"
        let normalString3 = NSMutableAttributedString(string:boldText4)

               attributedString4.append(normalString3)

        
               label2.attributedText = attributedString4
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
