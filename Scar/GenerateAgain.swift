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
        imageNav.layer.borderWidth = 0.5
        imageNav.layer.borderColor = CGColor(srgbRed: 0.46, green: 0.41, blue: 0.51, alpha: 1)
        
        img.layer.borderWidth = 0.5
        img.layer.masksToBounds = true
        img.layer.borderColor = (UIColor.init(named: "#2E2933")?.cgColor)
        img.layer.cornerRadius = img.frame.size.width/2
        img.clipsToBounds = true
        if let dir = try? FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false) {
                   img.image = UIImage(contentsOfFile: URL(fileURLWithPath: dir.absoluteString).appendingPathComponent("collage").path)?.imageWithInsets(insets: UIEdgeInsets(top: 40, left: 75, bottom: 65, right: 75))
        }
            
        var  normalText = "The pattern in the large circle describes\n"
                var normalString = NSMutableAttributedString(string:normalText)
                let attributedString = NSMutableAttributedString(string:normalText)
                
                var boldText = "your personality "
                    var attrs = [NSAttributedString.Key.font : UIFont(name: "CeraPro-Medium", size: 20)]
                   let attributedString2 = NSMutableAttributedString(string:boldText, attributes:attrs as [NSAttributedString.Key : Any])
                attributedString.append(attributedString2)


                        normalText = "and the color inside \nrepresents "
                        normalString = NSMutableAttributedString(string:normalText)

                       attributedString.append(normalString)
                       
                        boldText = "the way you want to look\n"
                        attrs = [NSAttributedString.Key.font : UIFont(name: "CeraPro-Medium", size: 20)]
                       
                       let attributedString3 = NSMutableAttributedString(string:boldText, attributes:attrs as [NSAttributedString.Key : Any])
                       
                       attributedString.append(attributedString3)
                 
                normalText = "from the outside.\nThe two shapes on the outside recount\n"
                 normalString = NSMutableAttributedString(string:normalText)

                attributedString.append(normalString)
                
                boldText = "the way you would like to be "
                 attrs = [NSAttributedString.Key.font : UIFont(name: "CeraPro-Medium", size: 20)]
                
                let attributedString4 = NSMutableAttributedString(string:boldText, attributes:attrs as [NSAttributedString.Key : Any])
                
                attributedString.append(attributedString4)
                
                normalText = "and the \ntexture inside represents "
                 normalString = NSMutableAttributedString(string:normalText)

                attributedString.append(normalString)
                
                
                boldText = "the \nperception you have of your sign"
                 attrs = [NSAttributedString.Key.font : UIFont(name: "CeraPro-Medium", size: 20)]
                
                let attributedString6 = NSMutableAttributedString(string:boldText, attributes:attrs as [NSAttributedString.Key : Any])
                
                attributedString.append(attributedString6)
                
                normalText = ", that\nis in gold and occupies the center of\nthe image, as "
                        normalString = NSMutableAttributedString(string:normalText)

                       attributedString.append(normalString)
               
               boldText = "Kintsugi art "
                        attrs = [NSAttributedString.Key.font : UIFont(name: "CeraPro-Medium", size: 20)]
                       
                       let attributedString7 = NSMutableAttributedString(string:boldText, attributes:attrs as [NSAttributedString.Key : Any])
                       
                       attributedString.append(attributedString7)
               
               normalText = "teaches!"
                               normalString = NSMutableAttributedString(string:normalText)

                              attributedString.append(normalString)
                              
                              label.attributedText = attributedString
            

            
            boldText = "Circle"
                       attrs = [NSAttributedString.Key.font : UIFont(name: "CeraPro-Medium", size: 18)]
                      let attributedString9 = NSMutableAttributedString(string:boldText, attributes:attrs as [NSAttributedString.Key : Any])

                       normalText = ": empathic - sociable"
                       normalString = NSMutableAttributedString(string:normalText)

                      attributedString9.append(normalString)
                      
                      lab1.attributedText = attributedString9
            
            boldText = "Zig Zag"
                       attrs = [NSAttributedString.Key.font : UIFont(name: "CeraPro-Medium", size: 18)]
                      let attributedString10 = NSMutableAttributedString(string:boldText, attributes:attrs as [NSAttributedString.Key : Any])

                       normalText = ": creative - aspiring"
                       normalString = NSMutableAttributedString(string:normalText)

                      attributedString10.append(normalString)
                      
                      lab2.attributedText = attributedString10
            
            boldText = "Triangle"
                       attrs = [NSAttributedString.Key.font : UIFont(name: "CeraPro-Medium", size: 18)]
                      let attributedString11 = NSMutableAttributedString(string:boldText, attributes:attrs as [NSAttributedString.Key : Any])

                       normalText = ": leader - focussed"
                       normalString = NSMutableAttributedString(string:normalText)

                      attributedString11.append(normalString)
                      
                      lab3.attributedText = attributedString11
            
            boldText = "Rectangle"
                       attrs = [NSAttributedString.Key.font : UIFont(name: "CeraPro-Medium", size: 18)]
                      let attributedString12 = NSMutableAttributedString(string:boldText, attributes:attrs as [NSAttributedString.Key : Any])

                       normalText = ": curious - confused"
                       normalString = NSMutableAttributedString(string:normalText)

                      attributedString12.append(normalString)
                      
                      lab4.attributedText = attributedString12
            
            boldText = "Square"
                       attrs = [NSAttributedString.Key.font : UIFont(name: "CeraPro-Medium", size: 18)]
                      let attributedString13 = NSMutableAttributedString(string:boldText, attributes:attrs as [NSAttributedString.Key : Any])

                       normalText = ": careful - analytic"
                       normalString = NSMutableAttributedString(string:normalText)

                      attributedString13.append(normalString)
                      
                      lab5.attributedText = attributedString13
        
    }
    @IBAction func saveImg(_ sender: UIButton) {
        UIImageWriteToSavedPhotosAlbum(img.image!, nil, nil, nil)

    }
    @IBAction func share(_ sender: Any) {
    }
    @IBAction func generate(_ sender: Any) {
    }
}
