//
//  ViewController.swift
//  Scar
//
//  Created by Antonio Cimino on 30/04/2020.
//  Copyright © 2020 Antonio Cimino. All rights reserved.
//

import UIKit
import CloudKit
import SQLite3

class ChooseTexture: UIViewController  {
   
    var text: [String] = []
    var texture: [String] = []
    var submit: String = ""
    var submitNo: String = ""
    
    override func viewDidLoad() {
        overrideUserInterfaceStyle = .light
        nex.isEnabled = false
        
        var db: OpaquePointer?
                                               
                 //Si connette al DB
                 let fileURL = try!
                 FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false).appendingPathComponent("Database.sqlite")
                 if sqlite3_open(fileURL.path, &db) != SQLITE_OK {
                     print("error opening database")
                 }
                                             
                 //Recupera Valore
                 var stmt: OpaquePointer?
                 let queryString = "SELECT * FROM Lingua"
                 if sqlite3_prepare(db, queryString, -1, &stmt, nil) != SQLITE_OK{
                 let errmsg = String(cString: sqlite3_errmsg(db)!)
                 print("error preparing insert: \(errmsg)")
                     return
                 }
                                 
                 var lingua = ""
                 while(sqlite3_step(stmt) == SQLITE_ROW){
                     lingua = String(cString: sqlite3_column_text(stmt, 1))
                 }
                                         
                 if(lingua == "eng"){
                     text = ENG.textOnChooseTexture
                     texture = ENG.Texture
                     submit = ENG.button[4]
                     submitNo = ENG.button[5]
                     yes.imageView?.image = UIImage(named: ENG.button[6])
                     no.imageView?.image = UIImage(named: ENG.button[7])
                 } else if (lingua == "ita"){
                     text = ITA.textOnChooseTexture
                     texture = ITA.Texture
                     submit = ITA.button[4]
                     submitNo = ITA.button[5]
                     yes.imageView?.image = UIImage(named: ITA.button[6])
                     no.imageView?.image = UIImage(named: ITA.button[7])
                 }
                 
        
       var boldText = text[0]
         var attrs = [NSAttributedString.Key.font : UIFont(name: "Poppins-SemiBold", size: 20)]
        let attributedString = NSMutableAttributedString(string:boldText, attributes:attrs as [NSAttributedString.Key : Any])

        var  normalText = text[1]
        var normalString = NSMutableAttributedString(string:normalText)

        attributedString.append(normalString)
        
         boldText = text[2]
         attrs = [NSAttributedString.Key.font : UIFont(name: "Poppins-SemiBold", size: 20)]
        
        let attributedString2 = NSMutableAttributedString(string:boldText, attributes:attrs as [NSAttributedString.Key : Any])
        
        attributedString.append(attributedString2)
               
        label.attributedText = attributedString
        
        normalText = text[3]
        attrs = [NSAttributedString.Key.font : UIFont(name: "Poppins-Medium", size: 20)]
        normalString = NSMutableAttributedString(string:normalText, attributes:attrs as [NSAttributedString.Key : Any])
        sea.setAttributedTitle(normalString, for: .normal)
        
        normalText = text[4]
        attrs = [NSAttributedString.Key.font : UIFont(name: "Poppins-Medium", size: 20)]
        normalString = NSMutableAttributedString(string:normalText, attributes:attrs as [NSAttributedString.Key : Any])
        cratere.setAttributedTitle(normalString, for: .normal)
        
        normalText = text[5]
        attrs = [NSAttributedString.Key.font : UIFont(name: "Poppins-Medium", size: 20)]
        normalString = NSMutableAttributedString(string:normalText, attributes:attrs as [NSAttributedString.Key : Any])
        texile.setAttributedTitle(normalString, for: .normal)
        
        normalText = text[6]
        attrs = [NSAttributedString.Key.font : UIFont(name: "Poppins-Medium", size: 20)]
        normalString = NSMutableAttributedString(string:normalText, attributes:attrs as [NSAttributedString.Key : Any])
        marble.setAttributedTitle(normalString, for: .normal)
               
        normalText = text[7]
        attrs = [NSAttributedString.Key.font : UIFont(name: "Poppins-Medium", size: 20)]
        normalString = NSMutableAttributedString(string:normalText, attributes:attrs as [NSAttributedString.Key : Any])
        wood.setAttributedTitle(normalString, for: .normal)
        
    }

    @IBOutlet weak var stackO: UIStackView!
    @IBOutlet weak var sea: UIButton!
    @IBOutlet weak var wood: UIButton!
    @IBOutlet weak var texile: UIButton!
    @IBOutlet weak var cratere: UIButton!
    @IBOutlet weak var marble: UIButton!
    @IBOutlet weak var nex: UIButton!
    @IBOutlet weak var textileImg: UIImageView!
    @IBOutlet weak var cartereImg: UIImageView!
    @IBOutlet weak var seaImg: UIImageView!
    @IBOutlet weak var woodImg: UIImageView!
    @IBOutlet weak var marbleImg: UIImageView!
    @IBOutlet weak var HView: UIStackView!
    
    @IBOutlet weak var question: UILabel!
    @IBOutlet weak var label: UILabel!
    static var texture1: String!
    
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var results: UILabel!
    @IBOutlet weak var yes: UIButton!
    @IBOutlet weak var no: UIButton!
    
    func traslate(view: UIView, aCircleTime: Double, to: CGFloat) {
        print(view.frame.origin.x)
        UIView.animate(withDuration: aCircleTime, animations: {
            () -> Void in view.transform = CGAffineTransform(translationX: 0, y: to)
        })
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
        
        viewDidLoad()
          

                if(view.frame.height == 896){
                    traslate(view: stackO,aCircleTime: 0, to: -20)
                    traslate(view: label,aCircleTime: 0, to: -20)
                    traslate(view: question,aCircleTime: 0, to: -20)
                    traslate(view: nex,aCircleTime: 0, to: -20)
                    
                }else if(view.frame.height == 667){
                    traslate(view: stackO,aCircleTime: 0, to: -100)
                    traslate(view: label,aCircleTime: 0, to: -82)
                    traslate(view: question,aCircleTime: 0, to: -55)
                    traslate(view: HView,aCircleTime: 0, to: -18)
                    traslate(view: nex,aCircleTime: 0, to: -182)
                    stackO.spacing = 7.5
                    traslate(view: label1,aCircleTime: 0, to: -100)
                    traslate(view: label2,aCircleTime: 0, to: -100)
                    traslate(view: results,aCircleTime: 0, to: -100)
                    traslate(view: yes,aCircleTime: 0, to: -100)
                    traslate(view: no,aCircleTime: 0, to: -100)
                    results.font = UIFont(name: "Poppins-SemiBold", size: 19)
                    
                   
        }else if(view.frame.height == 736){
                    traslate(view: stackO,aCircleTime: 0, to: -76)
                    traslate(view: label,aCircleTime: 0, to: -56)
                    traslate(view: question,aCircleTime: 0, to: -29)
                    traslate(view: nex,aCircleTime: 0, to: -110)
                    traslate(view: HView,aCircleTime: 0, to: -18)
                    
                    stackO.spacing = 7.5
                    
                   
        }else if(view.frame.height == 812){
                    traslate(view: stackO,aCircleTime: 0, to: -62)
                    traslate(view: label,aCircleTime: 0, to: -56)
                    traslate(view: question,aCircleTime: 0, to: -39)
                    traslate(view: nex,aCircleTime: 0, to: -124)
                    traslate(view: HView,aCircleTime: 0, to: -16)
                    
                    stackO.spacing = 7.5
                    
                   
        }
                
}
    @IBAction func pressed(_ sender: UIButton) {
       let blurEffect = UIBlurEffect(style: UIBlurEffect.Style.light)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = view1.bounds
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        blurEffectView.alpha = 1
        view1.addSubview(blurEffectView)
        
        self.tabBarController?.tabBar.isHidden = true
       

//        label1.isHidden = false
//        label2.isHidden = false
//        results.isHidden = false
//        yes.isHidden = false
//        no.isHidden = false
        
        view2.isHidden = false
        
        if((String(describing: ChooseTexture.texture1).dropFirst(10).dropLast(2)) == "cratere"){
            results?.text = (String(describing: ChooseShape.shape1).dropFirst(10).dropLast(2).capitalized)+" - \(String(describing: ChooseShape2.shape2).dropFirst(10).dropLast(2).capitalized) - \(String(describing: ChoosePalette.color).dropFirst(10).dropLast(2).capitalized) - \(String(describing: ChooseTexture.texture1).dropFirst(10).dropLast(3).capitalized)"
            } else {
            results?.text = (String(describing: ChooseShape.shape1).dropFirst(10).dropLast(2).capitalized)+" - \(String(describing: ChooseShape2.shape2).dropFirst(10).dropLast(2).capitalized) - \(String(describing: ChoosePalette.color).dropFirst(10).dropLast(2).capitalized) - \(String(describing: ChooseTexture.texture1).dropFirst(10).dropLast(2).capitalized)"
            
            
        }

        
//        let blurEffect3 = UIBlurEffect(style: UIBlurEffect.Style.light)
//                let blurEffectView3 = UIVisualEffectView(effect: blurEffect3)
//                blurEffectView3.frame = view.bounds
//                blurEffectView3.autoresizingMask = [.flexibleWidth, .flexibleHeight]
//                blurEffectView3.alpha = 0
//                label1.addSubview(blurEffectView3)
    }
    
    @IBAction func chooseSea(_ sender: UIButton) {
        if sender.isSelected {
            sea.isSelected = false
            nex.isEnabled = false
            nex.imageView?.image = UIImage(named: submitNo)
        } else {
            sea.isSelected = true
            wood.isSelected = false
            texile.isSelected = false
            cratere.isSelected = false
            marble.isSelected = false
            nex.isEnabled = true
            ChooseTexture.texture1 = texture[0]
            nex.imageView?.image = UIImage(named: submit)
        }
    }
    
    @IBAction func chooseWood(_ sender: UIButton) {
        if sender.isSelected {
            wood.isSelected = false
            nex.isEnabled = false
            nex.imageView?.image = UIImage(named: submitNo)
        } else {
            sea.isSelected = false
            wood.isSelected = true
            texile.isSelected = false
            cratere.isSelected = false
            marble.isSelected = false
            nex.isEnabled = true
            ChooseTexture.texture1 = texture[4]
            nex.imageView?.image = UIImage(named: submit)
        }
    }
    
    @IBAction func chooseTexile(_ sender: UIButton) {
        if sender.isSelected {
            texile.isSelected = false
            nex.isEnabled = false
            nex.imageView?.image = UIImage(named: submitNo)
        } else {
            sea.isSelected = false
            wood.isSelected = false
            texile.isSelected = true
            cratere.isSelected = false
            marble.isSelected = false
            nex.isEnabled = true
            ChooseTexture.texture1 = texture[2]
            nex.imageView?.image = UIImage(named: submit)
        }
    }
    
    @IBAction func chooseCratere(_ sender: UIButton) {
        if sender.isSelected {
            cratere.isSelected = false
            nex.isEnabled = false
            nex.imageView?.image = UIImage(named: submitNo)
        } else {
            sea.isSelected = false
            wood.isSelected = false
            texile.isSelected = false
            cratere.isSelected = true
            marble.isSelected = false
            nex.isEnabled = true
            ChooseTexture.texture1 = texture[1]
            nex.imageView?.image = UIImage(named: submit)
        }
    }
    
    @IBAction func chooseMarble(_ sender: UIButton) {
        if sender.isSelected {
            marble.isSelected = false
            nex.isEnabled = false
            nex.imageView?.image = UIImage(named: submitNo)
        } else {
            sea.isSelected = false
            wood.isSelected = false
            texile.isSelected = false
            cratere.isSelected = false
            marble.isSelected = true
            nex.isEnabled = true
            ChooseTexture.texture1 = texture[3]
            nex.imageView?.image = UIImage(named: submit)
        }
    }
}
