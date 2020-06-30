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

class ChoosePalette: UIViewController  {
   
    var text:[String] = []
    var palette:[String] = []
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
                  text = ENG.textOnChoosePalette
                  palette = ENG.Palette
                  submit = ENG.button[4]
                  submitNo = ENG.button[5]
              } else if (lingua == "ita"){
                  text = ITA.textOnChoosePalette
                  palette = ITA.Palette
                  submit = ITA.button[4]
                  submitNo = ITA.button[5]
              }
        
        let boldText = text[0]
        let attributedString = NSMutableAttributedString(string:boldText)

        let normalText = text[1]
        let attrs = [NSAttributedString.Key.font : UIFont(name: "Poppins-SemiBold", size: 20)]
        let normalString = NSMutableAttributedString(string:normalText, attributes:attrs as [NSAttributedString.Key : Any])

       attributedString.append(normalString)
       
       label.attributedText = attributedString
        
        var normalText1 = text[2]
        var attrs1 = [NSAttributedString.Key.font : UIFont(name: "Poppins-Medium", size: 20)]
        var normalString1 = NSMutableAttributedString(string:normalText1, attributes:attrs1 as [NSAttributedString.Key : Any])
        cool.setAttributedTitle(normalString1, for: .normal)
        
        normalText1 = text[3]
        attrs1 = [NSAttributedString.Key.font : UIFont(name: "Poppins-Medium", size: 20)]
        normalString1 = NSMutableAttributedString(string:normalText1, attributes:attrs1 as [NSAttributedString.Key : Any])
        warm.setAttributedTitle(normalString1, for: .normal)
        
        normalText1 = text[4]
        attrs1 = [NSAttributedString.Key.font : UIFont(name: "Poppins-Medium", size: 20)]
        normalString1 = NSMutableAttributedString(string:normalText1, attributes:attrs1 as [NSAttributedString.Key : Any])
        neutral.setAttributedTitle(normalString1, for: .normal)
        
        question.text = text[5]

    }
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var cool: UIButton!
    @IBOutlet weak var warm: UIButton!
    @IBOutlet weak var neutral: UIButton!
    @IBOutlet weak var cold: UIImageView!
    @IBOutlet weak var warmt: UIImageView!
    @IBOutlet weak var mammt: UIImageView!
    
    
    @IBOutlet weak var nex: UIButton!
    @IBOutlet weak var question: UILabel!
    static var color: String!
    
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
        
                if(view.frame.height == 812){
                    traslate(view: question, aCircleTime: 0, to: 45)
                    traslate(view: label, aCircleTime: 0, to: 55)
                    traslate(view: nex, aCircleTime: 0, to: 5)
                    traslate(view: cool, aCircleTime: 0, to: 55)
                    traslate(view: warm, aCircleTime: 0, to: 55)
                    traslate(view: neutral, aCircleTime: 0, to: 55)
                    traslate(view: cold, aCircleTime: 0, to: 55)
                    traslate(view: warmt, aCircleTime: 0, to: 55)
                    traslate(view: mammt, aCircleTime: 0, to: 55)
                }else if(view.frame.height == 667){
                    traslate(view: question, aCircleTime: 0, to: -22)
                    traslate(view: label, aCircleTime: 0, to: -9)
                    traslate(view: nex, aCircleTime: 0, to: -91)
                    traslate(view: cool, aCircleTime: 0, to: -25)
                    traslate(view: warm, aCircleTime: 0, to: -25)
                    traslate(view: neutral, aCircleTime: 0, to: -25)
                    traslate(view: cold, aCircleTime: 0, to: -25)
                    traslate(view: warmt, aCircleTime: 0, to: -25)
                    traslate(view: mammt, aCircleTime: 0, to: -25)
                }else if(view.frame.height == 736){
                    traslate(view: question, aCircleTime: 0, to: -36)
                    traslate(view: label, aCircleTime: 0, to: -43)
                    traslate(view: nex, aCircleTime: 0, to: -91)
                    traslate(view: cool, aCircleTime: 0, to: -42)
                    traslate(view: warm, aCircleTime: 0, to: -42)
                    traslate(view: neutral, aCircleTime: 0, to: -42)
                    traslate(view: cold, aCircleTime: 0, to: -42)
                    traslate(view: warmt, aCircleTime: 0, to: -42)
                    traslate(view: mammt, aCircleTime: 0, to: -42)
                }else if(view.frame.height == 896){
                    traslate(view: nex, aCircleTime: 0, to: -21)
                    traslate(view: question, aCircleTime: 0, to: -16)
        }
    }
    
    @IBAction func chooseCool(_ sender: UIButton) {
        if sender.isSelected {
            cool.isSelected = false
            nex.isEnabled = false
            nex.imageView?.image = UIImage(named: submitNo)
        } else {
            cool.isSelected = true
            warm.isSelected = false
            neutral.isSelected = false
            nex.isEnabled = true
            ChoosePalette.color = palette[0]
            nex.imageView?.image = UIImage(named: submit)
        }
    }
    
    @IBAction func chooseWarm(_ sender: UIButton) {
        if sender.isSelected {
            warm.isSelected = false
            nex.isEnabled = false
            nex.imageView?.image = UIImage(named: submitNo)
        } else {
            cool.isSelected = false
            warm.isSelected = true
            neutral.isSelected = false
            nex.isEnabled = true
            ChoosePalette.color = palette[1]
            nex.imageView?.image = UIImage(named: submit)
        }
    }

    @IBAction func chooseNeutral(_ sender: UIButton) {
        if sender.isSelected {
            neutral.isSelected = false
            nex.isEnabled = false
            nex.imageView?.image = UIImage(named: submitNo)
        } else {
            cool.isSelected = false
            warm.isSelected = false
            neutral.isSelected = true
            nex.isEnabled = true
            ChoosePalette.color = palette[2]
            nex.imageView?.image = UIImage(named: submit)
        }
    }
}
