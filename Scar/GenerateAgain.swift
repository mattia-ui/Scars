//
//  GenerateAgain.swift
//  Scar
//
//  Created by Silvio Cresci on 29/05/2020.
//  Copyright © 2020 Mattia Cardone. All rights reserved.
//

import UIKit
import SQLite3

class GenerateAgain: UIViewController {
    
    @IBOutlet weak var imageNav: UIImageView!
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var lab1: UILabel!
    @IBOutlet weak var lab2: UILabel!
    @IBOutlet weak var lab3: UILabel!
    @IBOutlet weak var lab4: UILabel!
    @IBOutlet weak var lab5: UILabel!
    @IBOutlet weak var downloadButton: UIButton!
    @IBOutlet weak var shareButton: UIButton!
    @IBOutlet weak var GenerateAgainButton: UIButton!
    var text:[String] = []
    
    
    func traslate(view: UIView, aCircleTime: Double, to: CGFloat) {
           print(view.frame.origin.x)
           UIView.animate(withDuration: aCircleTime, animations: {
               () -> Void in view.transform = CGAffineTransform(translationX: 0, y: to)
           })
       }
       
       override func viewWillAppear(_ animated: Bool) {
           super.viewWillAppear(animated)
           
           if(view.frame.width == 375 /*&& UIScreen.main.bounds.height == 667*/){
               
           
           traslate(view: img, aCircleTime: 0, to: -30)
           traslate(view: downloadButton, aCircleTime: 0, to: -30)
           traslate(view: label, aCircleTime: 0, to: -30)
           traslate(view: lab1, aCircleTime: 0, to: -30)
           traslate(view: lab2, aCircleTime: 0, to: -30)
           traslate(view: lab3, aCircleTime: 0, to: -30)
           traslate(view: lab4, aCircleTime: 0, to: -30)
           traslate(view: lab5, aCircleTime: 0, to: -30)
           traslate(view: shareButton, aCircleTime: 0, to: -30)
           traslate(view: GenerateAgainButton, aCircleTime: 0, to: -30)

           }
           
       }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        imageNav.layer.borderWidth = 0.5
//        imageNav.layer.borderColor = CGColor(srgbRed: 0.46, green: 0.41, blue: 0.51, alpha: 1)
        
        text = ENG.textOnGenerateAgain
        
        img.layer.borderWidth = 0.4
        img.layer.masksToBounds = true
        img.layer.borderColor = (UIColor.init(named: "#2E2933")?.cgColor)
        img.layer.cornerRadius = img.frame.size.width/2
        img.clipsToBounds = true
        if let dir = try? FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false) {
                   img.image = UIImage(contentsOfFile: URL(fileURLWithPath: dir.absoluteString).appendingPathComponent("collage").path)?.imageWithInsets(insets: UIEdgeInsets(top: 65, left: 65, bottom: 65, right: 65))
        }
        var fontSize : CGFloat = 18
        if(view.frame.width == 375){
            fontSize = 18
        }
        var  normalText = text[0]
                var attrs = [NSAttributedString.Key.font : UIFont(name: "Poppins-Light", size: fontSize)]
                let attributedString = NSMutableAttributedString(string:normalText, attributes:attrs as [NSAttributedString.Key : Any])
                
                var boldText = text[1]
                     attrs = [NSAttributedString.Key.font : UIFont(name: "Poppins-Medium", size: fontSize)]
                   let attributedString2 = NSMutableAttributedString(string:boldText, attributes:attrs as [NSAttributedString.Key : Any])
                attributedString.append(attributedString2)


                        normalText = text[2]
                       attrs = [NSAttributedString.Key.font : UIFont(name: "Poppins-Light", size: fontSize)]
                        let attributedString20 = NSMutableAttributedString(string:normalText, attributes:attrs as [NSAttributedString.Key : Any])

                       attributedString.append(attributedString20)
                       
                        boldText = text[3]
                        attrs = [NSAttributedString.Key.font : UIFont(name: "Poppins-Medium", size: fontSize)]
                       
                       let attributedString3 = NSMutableAttributedString(string:boldText, attributes:attrs as [NSAttributedString.Key : Any])
                       
                       attributedString.append(attributedString3)
                 
                normalText = text[4]
                    attrs = [NSAttributedString.Key.font : UIFont(name: "Poppins-Light", size: fontSize)]
                  let attributedString21 = NSMutableAttributedString(string:normalText, attributes:attrs as [NSAttributedString.Key : Any])

                 attributedString.append(attributedString21)
                
                boldText = text[5]
                 attrs = [NSAttributedString.Key.font : UIFont(name: "Poppins-Medium", size: fontSize)]
                
                let attributedString4 = NSMutableAttributedString(string:boldText, attributes:attrs as [NSAttributedString.Key : Any])
                
                attributedString.append(attributedString4)
                
                normalText = text[6]
                    attrs = [NSAttributedString.Key.font : UIFont(name: "Poppins-Light", size: fontSize)]
                  let attributedString22 = NSMutableAttributedString(string:normalText, attributes:attrs as [NSAttributedString.Key : Any])

                 attributedString.append(attributedString22)
                
                
                boldText = text[7]
                 attrs = [NSAttributedString.Key.font : UIFont(name: "Poppins-Medium", size: fontSize)]
                
                let attributedString6 = NSMutableAttributedString(string:boldText, attributes:attrs as [NSAttributedString.Key : Any])
                
                attributedString.append(attributedString6)
                
                normalText = text[8]
                        attrs = [NSAttributedString.Key.font : UIFont(name: "Poppins-Light", size: fontSize)]
                         let attributedString23 = NSMutableAttributedString(string:normalText, attributes:attrs as [NSAttributedString.Key : Any])

                        attributedString.append(attributedString23)
               
               boldText = text[9]
                        attrs = [NSAttributedString.Key.font : UIFont(name: "Poppins-Medium", size: fontSize)]
                       
                       let attributedString7 = NSMutableAttributedString(string:boldText, attributes:attrs as [NSAttributedString.Key : Any])
                       
                       attributedString.append(attributedString7)
               
               normalText = text[10]
                               attrs = [NSAttributedString.Key.font : UIFont(name: "Poppins-Light", size: fontSize)]
                                let attributedString24 = NSMutableAttributedString(string:normalText, attributes:attrs as [NSAttributedString.Key : Any])

                               attributedString.append(attributedString24)
                              label.attributedText = attributedString
            

            
            boldText = text[11]
                       attrs = [NSAttributedString.Key.font : UIFont(name: "Poppins-Medium", size: fontSize)]
                      let attributedString9 = NSMutableAttributedString(string:boldText, attributes:attrs as [NSAttributedString.Key : Any])

                       normalText = text[12]
                        attrs = [NSAttributedString.Key.font : UIFont(name: "Poppins-Light", size: fontSize)]
                        let attributedString30 = NSMutableAttributedString(string:normalText, attributes:attrs as [NSAttributedString.Key : Any])

                       attributedString9.append(attributedString30)
                      
                      lab1.attributedText = attributedString9
            
            boldText = text[13]
                       attrs = [NSAttributedString.Key.font : UIFont(name: "Poppins-Medium", size: fontSize)]
                      let attributedString10 = NSMutableAttributedString(string:boldText, attributes:attrs as [NSAttributedString.Key : Any])

                       normalText = text[14]
                       attrs = [NSAttributedString.Key.font : UIFont(name: "Poppins-Light", size: fontSize)]
                        let attributedString31 = NSMutableAttributedString(string:normalText, attributes:attrs as [NSAttributedString.Key : Any])

                       attributedString10.append(attributedString31)
                      
                      lab2.attributedText = attributedString10
            
            boldText = text[15]
                       attrs = [NSAttributedString.Key.font : UIFont(name: "Poppins-Medium", size: fontSize)]
                      let attributedString11 = NSMutableAttributedString(string:boldText, attributes:attrs as [NSAttributedString.Key : Any])

                       normalText = text[16]
                      attrs = [NSAttributedString.Key.font : UIFont(name: "Poppins-Light", size: fontSize)]
                        let attributedString32 = NSMutableAttributedString(string:normalText, attributes:attrs as [NSAttributedString.Key : Any])

                       attributedString11.append(attributedString32)
                      
                      lab3.attributedText = attributedString11
            
            boldText = text[17]
                       attrs = [NSAttributedString.Key.font : UIFont(name: "Poppins-Medium", size: fontSize)]
                      let attributedString12 = NSMutableAttributedString(string:boldText, attributes:attrs as [NSAttributedString.Key : Any])

                       normalText = text[18]
                       attrs = [NSAttributedString.Key.font : UIFont(name: "Poppins-Light", size: fontSize)]
                        let attributedString33 = NSMutableAttributedString(string:normalText, attributes:attrs as [NSAttributedString.Key : Any])

                       attributedString12.append(attributedString33)
                      
                      lab4.attributedText = attributedString12
            
            boldText = text[19]
                       attrs = [NSAttributedString.Key.font : UIFont(name: "Poppins-Medium", size: fontSize)]
                      let attributedString13 = NSMutableAttributedString(string:boldText, attributes:attrs as [NSAttributedString.Key : Any])

                       normalText = text[20]
                       attrs = [NSAttributedString.Key.font : UIFont(name: "Poppins-Light", size: fontSize)]
                        let attributedString34 = NSMutableAttributedString(string:normalText, attributes:attrs as [NSAttributedString.Key : Any])

                       attributedString13.append(attributedString34)
                      
                      lab5.attributedText = attributedString13
        
    }
    @IBAction func saveImg(_ sender: UIButton) {
        UIImageWriteToSavedPhotosAlbum(img.image!, nil, nil, nil)
        let ac = UIAlertController(title: "Masterpiece saved!", message: text[21], preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "OK", style: .default))
        present(ac, animated: true)

    }
    
//    @IBAction func share(_ sender: Any) {
//        let firstActivityItem = ""
//        let secondActivityItem : NSURL = NSURL(string: "http//:hangme")!
//        let image : UIImage =  img.image!
//        let activityViewController : UIActivityViewController = UIActivityViewController(
//            activityItems: [firstActivityItem, secondActivityItem, image], applicationActivities: nil)
//            activityViewController.popoverPresentationController?.sourceView = (sender as! UIButton)
//            activityViewController.popoverPresentationController?.permittedArrowDirections = UIPopoverArrowDirection.up
//            activityViewController.popoverPresentationController?.sourceRect = CGRect(x: 150, y: 150, width: 0, height: 0)
//            activityViewController.excludedActivityTypes = [
//                 UIActivity.ActivityType.postToWeibo,
//                 UIActivity.ActivityType.print,
//                 UIActivity.ActivityType.assignToContact,
//                 UIActivity.ActivityType.saveToCameraRoll,
//                 UIActivity.ActivityType.addToReadingList,
//                 UIActivity.ActivityType.postToFlickr,
//                 UIActivity.ActivityType.postToVimeo,
//                 UIActivity.ActivityType.postToTencentWeibo,
//                 UIActivity.ActivityType.postToFacebook,
//                 UIActivity.ActivityType.postToTwitter,
//            ]
//
//            self.present(activityViewController, animated: true, completion: nil)
//    }
    
    @IBAction func generate(_ sender: Any) {
        //Si connette al DB
        var db: OpaquePointer?
        let fileURL = try!
        FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false).appendingPathComponent("Database.sqlite")
        if sqlite3_open(fileURL.path, &db) != SQLITE_OK {
            print("error opening database")
        }
        
        var stmt: OpaquePointer?
        let queryString = "UPDATE Collage SET valore = 'si' WHERE id = 1;"
        sqlite3_prepare(db, queryString, -1, &stmt, nil)
        sqlite3_step(stmt)
        print("Saved successfully")
               
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let secondVC = storyboard.instantiateViewController(withIdentifier: "postCollage")  as! PostCollage
        self.navigationController?.pushViewController(secondVC, animated: true)
    }
    
    @IBAction func backB(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let secondVC = storyboard.instantiateViewController(withIdentifier: "postCollage")  as! PostCollage
        self.navigationController?.view.semanticContentAttribute = .forceRightToLeft
        self.navigationController?.pushViewController(secondVC, animated: true)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "passa"){
            (segue.destination as! SharePage).img = img.image ?? UIImage()
        }
    }
}
