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
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        imageNav.layer.borderWidth = 0.5
//        imageNav.layer.borderColor = CGColor(srgbRed: 0.46, green: 0.41, blue: 0.51, alpha: 1)
        
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
        var  normalText = "The pattern in the large circle describes\n"
                var attrs = [NSAttributedString.Key.font : UIFont(name: "Poppins-Light", size: fontSize)]
                let attributedString = NSMutableAttributedString(string:normalText, attributes:attrs as [NSAttributedString.Key : Any])
                
                var boldText = "your personality "
                     attrs = [NSAttributedString.Key.font : UIFont(name: "Poppins-Medium", size: fontSize)]
                   let attributedString2 = NSMutableAttributedString(string:boldText, attributes:attrs as [NSAttributedString.Key : Any])
                attributedString.append(attributedString2)


                        normalText = "and the color inside \nrepresents "
                       attrs = [NSAttributedString.Key.font : UIFont(name: "Poppins-Light", size: fontSize)]
                        let attributedString20 = NSMutableAttributedString(string:normalText, attributes:attrs as [NSAttributedString.Key : Any])

                       attributedString.append(attributedString20)
                       
                        boldText = "the way you want to look\n"
                        attrs = [NSAttributedString.Key.font : UIFont(name: "Poppins-Medium", size: fontSize)]
                       
                       let attributedString3 = NSMutableAttributedString(string:boldText, attributes:attrs as [NSAttributedString.Key : Any])
                       
                       attributedString.append(attributedString3)
                 
                normalText = "from the outside.\nThe two shapes on the outside recount\n"
                    attrs = [NSAttributedString.Key.font : UIFont(name: "Poppins-Light", size: fontSize)]
                  let attributedString21 = NSMutableAttributedString(string:normalText, attributes:attrs as [NSAttributedString.Key : Any])

                 attributedString.append(attributedString21)
                
                boldText = "the way you would like to be "
                 attrs = [NSAttributedString.Key.font : UIFont(name: "Poppins-Medium", size: fontSize)]
                
                let attributedString4 = NSMutableAttributedString(string:boldText, attributes:attrs as [NSAttributedString.Key : Any])
                
                attributedString.append(attributedString4)
                
                normalText = "and the \ntexture inside represents "
                    attrs = [NSAttributedString.Key.font : UIFont(name: "Poppins-Light", size: fontSize)]
                  let attributedString22 = NSMutableAttributedString(string:normalText, attributes:attrs as [NSAttributedString.Key : Any])

                 attributedString.append(attributedString22)
                
                
                boldText = "the \nperception you have of your sign"
                 attrs = [NSAttributedString.Key.font : UIFont(name: "Poppins-Medium", size: fontSize)]
                
                let attributedString6 = NSMutableAttributedString(string:boldText, attributes:attrs as [NSAttributedString.Key : Any])
                
                attributedString.append(attributedString6)
                
                normalText = ", that\nis in gold and occupies the center of\nthe image, as "
                        attrs = [NSAttributedString.Key.font : UIFont(name: "Poppins-Light", size: fontSize)]
                         let attributedString23 = NSMutableAttributedString(string:normalText, attributes:attrs as [NSAttributedString.Key : Any])

                        attributedString.append(attributedString23)
               
               boldText = "Kintsugi art "
                        attrs = [NSAttributedString.Key.font : UIFont(name: "Poppins-Medium", size: fontSize)]
                       
                       let attributedString7 = NSMutableAttributedString(string:boldText, attributes:attrs as [NSAttributedString.Key : Any])
                       
                       attributedString.append(attributedString7)
               
               normalText = "teaches!"
                               attrs = [NSAttributedString.Key.font : UIFont(name: "Poppins-Light", size: fontSize)]
                                let attributedString24 = NSMutableAttributedString(string:normalText, attributes:attrs as [NSAttributedString.Key : Any])

                               attributedString.append(attributedString24)
                              label.attributedText = attributedString
            

            
            boldText = "Circle"
                       attrs = [NSAttributedString.Key.font : UIFont(name: "Poppins-Medium", size: fontSize)]
                      let attributedString9 = NSMutableAttributedString(string:boldText, attributes:attrs as [NSAttributedString.Key : Any])

                       normalText = ": empathic - sociable"
                        attrs = [NSAttributedString.Key.font : UIFont(name: "Poppins-Light", size: fontSize)]
                        let attributedString30 = NSMutableAttributedString(string:normalText, attributes:attrs as [NSAttributedString.Key : Any])

                       attributedString9.append(attributedString30)
                      
                      lab1.attributedText = attributedString9
            
            boldText = "Zig Zag"
                       attrs = [NSAttributedString.Key.font : UIFont(name: "Poppins-Medium", size: fontSize)]
                      let attributedString10 = NSMutableAttributedString(string:boldText, attributes:attrs as [NSAttributedString.Key : Any])

                       normalText = ": creative - aspiring"
                       attrs = [NSAttributedString.Key.font : UIFont(name: "Poppins-Light", size: fontSize)]
                        let attributedString31 = NSMutableAttributedString(string:normalText, attributes:attrs as [NSAttributedString.Key : Any])

                       attributedString10.append(attributedString31)
                      
                      lab2.attributedText = attributedString10
            
            boldText = "Triangle"
                       attrs = [NSAttributedString.Key.font : UIFont(name: "Poppins-Medium", size: fontSize)]
                      let attributedString11 = NSMutableAttributedString(string:boldText, attributes:attrs as [NSAttributedString.Key : Any])

                       normalText = ": leader - focused"
                      attrs = [NSAttributedString.Key.font : UIFont(name: "Poppins-Light", size: fontSize)]
                        let attributedString32 = NSMutableAttributedString(string:normalText, attributes:attrs as [NSAttributedString.Key : Any])

                       attributedString11.append(attributedString32)
                      
                      lab3.attributedText = attributedString11
            
            boldText = "Rectangle"
                       attrs = [NSAttributedString.Key.font : UIFont(name: "Poppins-Medium", size: fontSize)]
                      let attributedString12 = NSMutableAttributedString(string:boldText, attributes:attrs as [NSAttributedString.Key : Any])

                       normalText = ": curious - confused"
                       attrs = [NSAttributedString.Key.font : UIFont(name: "Poppins-Light", size: fontSize)]
                        let attributedString33 = NSMutableAttributedString(string:normalText, attributes:attrs as [NSAttributedString.Key : Any])

                       attributedString12.append(attributedString33)
                      
                      lab4.attributedText = attributedString12
            
            boldText = "Square"
                       attrs = [NSAttributedString.Key.font : UIFont(name: "Poppins-Medium", size: fontSize)]
                      let attributedString13 = NSMutableAttributedString(string:boldText, attributes:attrs as [NSAttributedString.Key : Any])

                       normalText = ": careful - analytic"
                       attrs = [NSAttributedString.Key.font : UIFont(name: "Poppins-Light", size: fontSize)]
                        let attributedString34 = NSMutableAttributedString(string:normalText, attributes:attrs as [NSAttributedString.Key : Any])

                       attributedString13.append(attributedString34)
                      
                      lab5.attributedText = attributedString13
        
    }
    @IBAction func saveImg(_ sender: UIButton) {
        UIImageWriteToSavedPhotosAlbum(img.image!, nil, nil, nil)
        let ac = UIAlertController(title: "Masterpiece saved!", message: "Your Masterpiece was copied successfully", preferredStyle: .alert)
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
