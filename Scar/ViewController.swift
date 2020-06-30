//
//  ViewController.swift
//  Scar
//
//  Created by Mattia Cardone on 27/04/2020.
//  Copyright © 2020 Antonio Cimino. All rights reserved.
//

import UIKit
import SQLite3

class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate  {
    
    @IBOutlet weak var elaboraDisegno: UIButton!
    
    @IBOutlet weak var resetDis: UIButton!
    @IBOutlet weak var pictureScars: UIImageView!
    @IBOutlet weak var tempDrawScars: UIImageView!

    @IBOutlet weak var traceIt: UILabel!
    @IBOutlet weak var subTitle: UILabel!
    
    static var imageScars: UIImage!
    var lastPoint = CGPoint.zero
    var color = UIColor.black
    var brushWidth: CGFloat = 25.0
    var opacity: CGFloat = 1.0
    var swiped = false
    var points = [CGPoint] ()
    var text: [String] = []
    var submit: String = ""
    var submitNo: String = ""
    
    @IBOutlet weak var slider: UISlider!{
        didSet{
            slider.transform = CGAffineTransform(rotationAngle: CGFloat.pi + CGFloat.pi/2)
        }
    }
    
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
                }else if(view.frame.height == 667){
                   
                    traslate(view: resetDis, aCircleTime: 0, to: -50)
                    traslate(view: elaboraDisegno, aCircleTime: 0, to: 35)
                    var tG = CGAffineTransform.identity
                    tG = tG.rotated(by: CGFloat.pi + CGFloat.pi/2 )
                    tG = tG.translatedBy(x: tempDrawScars.frame.origin.y + 40, y: tempDrawScars.frame.origin.x)
                    slider.transform = tG
                }else if(view.frame.height == 736){
                   
                    traslate(view: resetDis, aCircleTime: 0, to: -50)
                    traslate(view: elaboraDisegno, aCircleTime: 0, to: 35)
                    var tG = CGAffineTransform.identity
                    tG = tG.rotated(by: CGFloat.pi + CGFloat.pi/2 )
                    tG = tG.translatedBy(x: tempDrawScars.frame.origin.y + 100, y: tempDrawScars.frame.origin.x)
                    slider.transform = tG
                }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
           text = ENG.textOnViewController
           submit = ENG.button[0]
           submitNo = ENG.button[1]
       } else if (lingua == "ita"){
           text = ITA.textOnViewController
           submit = ITA.button[0]
           submitNo = ITA.button[1]
       }
       
       elaboraDisegno.imageView?.image = UIImage(named: submitNo)
        
        let boldText1 = text[0]
        let normalString2 = NSMutableAttributedString(string:boldText1)
        
        let normalText1 = text[1]
        let attrs2 = [NSAttributedString.Key.font : UIFont(name: "Poppins-SemiBold", size: 20)]
        let attributedString = NSMutableAttributedString(string:normalText1, attributes:attrs2 as [NSAttributedString.Key : Any])
        
        normalString2.append(attributedString)
        
        let boldText2 = text[2]
        let normalString3 = NSMutableAttributedString(string:boldText2)

            normalString2.append(normalString3)
            subTitle.attributedText = normalString2
        
        pictureScars.image = ViewController.imageScars
        pictureScars.layer.borderWidth = 1
        pictureScars.layer.borderColor = CGColor(srgbRed: 0.112, green: 0.112, blue: 0.112, alpha: 1)
        
        resetDis.frame.origin.x = UIScreen.main.bounds.width - resetDis.frame.width - 30
        
        elaboraDisegno.frame.origin.y = UIScreen.main.bounds.height -  150
        elaboraDisegno.frame.origin.x =
            UIScreen.main.bounds.width/2 - elaboraDisegno.frame.size.width/2
       
        traceIt.text = text[3]
    }
    
    @IBAction func changeBrush(_ sender: UISlider) {
        brushWidth = CGFloat(sender.value)
        print(brushWidth)
    }
    
    //Cancella disegno.
    @IBAction func resetDraw(_ sender: Any) {
        elaboraDisegno.isEnabled = false
        elaboraDisegno.imageView?.image = UIImage(named: submitNo)
        tempDrawScars.image = nil
        points = []
    }
    
    
    //Disegnare.
    func drawLine(from fromPoint: CGPoint, to toPoint: CGPoint) {
        points.append(fromPoint)
        
        if(toPoint.y > pictureScars.frame.origin.y && toPoint.y < pictureScars.frame.origin.y + pictureScars.frame.height && toPoint.x > pictureScars.frame.origin.x && toPoint.x < pictureScars.frame.origin.x + pictureScars.frame.width){
            UIGraphicsBeginImageContext(view.frame.size)
            guard let context = UIGraphicsGetCurrentContext() else {
                return
            }
            tempDrawScars.image?.draw(in: view.bounds)
            
            context.move(to: fromPoint)
            context.addLine(to: toPoint)
            
            context.setLineCap(.round)
            context.setBlendMode(.normal)
            context.setLineWidth(brushWidth)
            context.setStrokeColor(color.cgColor)
            
            context.strokePath()
            
            tempDrawScars.image = UIGraphicsGetImageFromCurrentImageContext()
            tempDrawScars.alpha = opacity
            
            UIGraphicsEndImageContext()
            elaboraDisegno.isEnabled = true
            elaboraDisegno.imageView?.image = UIImage(named: submit)
        }
    }
      
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else {return}
        swiped = false
        lastPoint = touch.location(in: view)
        slider.isHidden = true
        resetDis.isHidden = true
    }
      
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else {return}
        swiped = true
        let currentPoint = touch.location(in: view)
        drawLine(from: lastPoint, to: currentPoint)
        lastPoint = currentPoint
    }
      
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        if !swiped {// draw a single point
            drawLine(from: lastPoint, to: lastPoint)
        }
        slider.isHidden = false
        resetDis.isHidden = false
    }
    
    //Elabora foto.
    @IBAction func drawElaboration(_ sender: Any) {
        ViewController.imageScars = UIImage(named: "")
//        UIGraphicsBeginImageContext(view.frame.size)
//        guard let context = UIGraphicsGetCurrentContext() else {return}
//        tempDrawScars.image?.draw(in: view.bounds)
//        for i in 0...points.count-1 {
//          for j in 0...points.count-1 {
//            print(points[i])
//            context.move(to: points[i])
//            context.addLine(to: points[j])
//            context.setLineCap(.round)
//            context.setBlendMode(.normal)
//            context.setLineWidth(brushWidth)
//            context.setStrokeColor(color.cgColor)
//            context.strokePath()
//          }
//        }
//        tempDrawScars.image = UIGraphicsGetImageFromCurrentImageContext()
//        tempDrawScars.alpha = opacity
        
        if let image = tempDrawScars.image {
            if let data = image.pngData() {
                let filename = getDocumentsDirectory().appendingPathComponent("copy.png")
                try? data.write(to: filename)
            }
        }
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let secondVC = storyboard.instantiateViewController(withIdentifier: "Collage")  as! Collage
        self.navigationController?.pushViewController(secondVC, animated: true)
        
        
    }
    
    func getDocumentsDirectory() -> URL {
         let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
         return paths[0]
     }
}

