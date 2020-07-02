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

class ChooseShape2: UIViewController  {
   
    var text: [String] = []
    var shape: [String] = []
    var submit: String = ""
    var submitNo: String = ""
    
    override func viewDidLoad() {
        nex.isEnabled = false
        overrideUserInterfaceStyle = .light
        
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
            text = ENG.textOnChooseShape2
            shape = ENG.Shape
            submit = ENG.button[4]
            submitNo = ENG.button[5]
        } else if (lingua == "ita"){
            text = ITA.textOnChooseShape2
            shape = ITA.Shape
            submit = ITA.button[4]
            submitNo = ITA.button[5]
        }
        
        nex.setImage(UIImage(named: submitNo), for: .disabled)
        nex.setImage(UIImage(named:submit), for: .normal)
        var boldText = text[0]
        var attributedString = NSMutableAttributedString(string:boldText)

        var normalText = text[1]
        var attrs = [NSAttributedString.Key.font : UIFont(name: "Poppins-SemiBold", size: 20)]
        var normalString = NSMutableAttributedString(string:normalText, attributes:attrs as [NSAttributedString.Key : Any])

        attributedString.append(normalString)
        
        label.attributedText = attributedString
        
         boldText = text[2]
         attrs = [NSAttributedString.Key.font : UIFont(name: "Poppins-Medium", size: 20)]
        attributedString = NSMutableAttributedString(string:boldText, attributes:attrs as [NSAttributedString.Key : Any])

         normalText = text[3]
         normalString = NSMutableAttributedString(string:normalText)

        attributedString.append(normalString)
        
        square.setAttributedTitle(attributedString, for: .normal)
        
         boldText = text[4]
         attrs = [NSAttributedString.Key.font : UIFont(name: "Poppins-Medium", size: 20)]
        attributedString = NSMutableAttributedString(string:boldText, attributes:attrs as [NSAttributedString.Key : Any])

         normalText = text[5]
         normalString = NSMutableAttributedString(string:normalText)

        attributedString.append(normalString)
        
        rect.setAttributedTitle(attributedString, for: .normal)
        
         boldText = text[6]
         attrs = [NSAttributedString.Key.font : UIFont(name: "Poppins-Medium", size: 20)]
        attributedString = NSMutableAttributedString(string:boldText, attributes:attrs as [NSAttributedString.Key : Any])

         normalText = text[7]
         normalString = NSMutableAttributedString(string:normalText)

        attributedString.append(normalString)
        
        triangle.setAttributedTitle(attributedString, for: .normal)
        
         boldText = text[8]
         attrs = [NSAttributedString.Key.font : UIFont(name: "Poppins-Medium", size: 20)]
        attributedString = NSMutableAttributedString(string:boldText, attributes:attrs as [NSAttributedString.Key : Any])

         normalText = text[9]
         normalString = NSMutableAttributedString(string:normalText)

        attributedString.append(normalString)
        
        circle.setAttributedTitle(attributedString, for: .normal)
        
         boldText = text[10]
         attrs = [NSAttributedString.Key.font : UIFont(name: "Poppins-Medium", size: 20)]
        attributedString = NSMutableAttributedString(string:boldText, attributes:attrs as [NSAttributedString.Key : Any])

         normalText = text[11]
         normalString = NSMutableAttributedString(string:normalText)

        attributedString.append(normalString)
        
        zigZag.setAttributedTitle(attributedString, for: .normal)
        
        question.text = text[12]
        
        
        
    }

    @IBOutlet weak var square: UIButton!
    @IBOutlet weak var circle: UIButton!
    @IBOutlet weak var triangle: UIButton!
    @IBOutlet weak var rect: UIButton!
    @IBOutlet weak var zigZag: UIButton!
    @IBOutlet weak var nex: UIButton!
    
    @IBOutlet weak var question: UILabel!
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var h1: UIStackView!
    @IBOutlet weak var h2: UIStackView!
    @IBOutlet weak var h3: UIStackView!
    @IBOutlet weak var h4: UIStackView!
    @IBOutlet weak var h5: UIStackView!
    @IBOutlet weak var vertical: UIStackView!
    
    static var shape2: String!
    
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
        
                if(view.frame.width == 414){
        //            h1.spacing = 33
        //            h2.spacing = 26
        //            h3.spacing = 29
        //            h4.spacing = 32
        //            h5.spacing = 23
                } else if(view.frame.width == 375){
                    h1.spacing = 23
                    h2.spacing = 16
                    h3.spacing = 19
                    h4.spacing = 22
                    h5.spacing = 13
                }
                if(view.frame.height == 812){
                    vertical.spacing = 8
                    traslate(view: question, aCircleTime: 0, to: -2)
                    traslate(view: label, aCircleTime: 0, to: -25)
                    traslate(view: vertical, aCircleTime: 0, to: -40)
                    traslate(view: nex, aCircleTime: 0, to: -137)
                    traslate(view: h5, aCircleTime: 0, to: -34)
                }else if(view.frame.height == 667){
                    vertical.spacing = 8
                    traslate(view: question, aCircleTime: 0, to: -38)
                    traslate(view: label, aCircleTime: 0, to: -66)
                    traslate(view: vertical, aCircleTime: 0, to: -88)
                    traslate(view: nex, aCircleTime: 0, to: -200)
                    traslate(view: h5, aCircleTime: 0, to: -35)
                }else if(view.frame.height == 736){
                    vertical.spacing = 10
                    traslate(view: question, aCircleTime: 0, to: -27)
                    traslate(view: label, aCircleTime: 0, to: -44)
                    traslate(view: vertical, aCircleTime: 0, to: -56)
                    traslate(view: nex, aCircleTime: 0, to: -140)
                    traslate(view: h5, aCircleTime: 0, to: -33)
                }else if(view.frame.height == 896){
                    
                    traslate(view: question, aCircleTime: 0, to: -20)
                    traslate(view: label, aCircleTime: 0, to: -35)
                    traslate(view: vertical, aCircleTime: 0, to: -43)
                    traslate(view: nex, aCircleTime: 0, to: -78)
                }
    }
    @IBAction func chooseSquare(_ sender: UIButton) {
       if sender.isSelected {
            square.isSelected = false
            nex.isEnabled = false
            nex.imageView?.image = UIImage(named: submitNo)

        } else {
            square.isSelected = true
            circle.isSelected = false
            triangle.isSelected = false
            rect.isSelected = false
            zigZag.isSelected = false
            nex.isEnabled = true
            ChooseShape2.shape2 = shape[0]
            nex.imageView?.image = UIImage(named: submit)

        }
    }
    
    @IBAction func chooseCircle(_ sender: UIButton) {
       if sender.isSelected {
            circle.isSelected = false
            nex.isEnabled = false
            nex.imageView?.image = UIImage(named: submitNo)

        } else {
            square.isSelected = false
            circle.isSelected = true
            triangle.isSelected = false
            rect.isSelected = false
            zigZag.isSelected = false
            nex.isEnabled = true
            ChooseShape2.shape2 = shape[3]
            nex.imageView?.image = UIImage(named: submit)

        }
    }
    
    @IBAction func chooseTriangle(_ sender: UIButton) {
      if sender.isSelected {
            triangle.isSelected = false
            nex.isEnabled = false
            nex.imageView?.image = UIImage(named: submitNo)

        } else {
            square.isSelected = false
            circle.isSelected = false
            triangle.isSelected = true
            rect.isSelected = false
            zigZag.isSelected = false
            nex.isEnabled = true
            ChooseShape2.shape2 = shape[2]
            nex.imageView?.image = UIImage(named: submit)

        }
    }
    
    @IBAction func chooseRect(_ sender: UIButton) {
        if sender.isSelected {
            rect.isSelected = false
            nex.isEnabled = false
            nex.imageView?.image = UIImage(named: submitNo)

        } else {
            square.isSelected = false
            circle.isSelected = false
            triangle.isSelected = false
            rect.isSelected = true
            zigZag.isSelected = false
            nex.isEnabled = true
            ChooseShape2.shape2 = shape[1]
            nex.imageView?.image = UIImage(named: submit)
        }
    }
    
    @IBAction func chooseZigZag(_ sender: UIButton) {
       if sender.isSelected {
            zigZag.isSelected = false
            nex.isEnabled = false
            nex.imageView?.image = UIImage(named: submitNo)

        } else {
            square.isSelected = false
            circle.isSelected = false
            triangle.isSelected = false
            rect.isSelected = false
            zigZag.isSelected = true
            nex.isEnabled = true
            ChooseShape2.shape2 = shape[4]
            nex.imageView?.image = UIImage(named: submit)

        }
    }
}
