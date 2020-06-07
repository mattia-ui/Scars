//
//  ViewController.swift
//  Scar
//
//  Created by Mattia Cardone on 27/04/2020.
//  Copyright © 2020 Antonio Cimino. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate  {
    
    @IBOutlet weak var elaboraDisegno: UIButton!
    
    @IBOutlet weak var resetDis: UIButton!
    @IBOutlet weak var pictureScars: UIImageView!
    @IBOutlet weak var tempDrawScars: UIImageView!

    @IBOutlet weak var subTitle: UILabel!
    
    static var imageScars: UIImage!
    var lastPoint = CGPoint.zero
    var color = UIColor.black
    var brushWidth: CGFloat = 10.0
    var opacity: CGFloat = 1.0
    var swiped = false
    var points = [CGPoint] ()
    
    @IBOutlet weak var slider: UISlider!{
        didSet{
            slider.transform = CGAffineTransform(rotationAngle: CGFloat.pi + CGFloat.pi/2)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        overrideUserInterfaceStyle = .light
        
        let boldText1 = "Trace and"
        let normalString2 = NSMutableAttributedString(string:boldText1)
        
        let normalText1 = " fill your sign"
        let attrs2 = [NSAttributedString.Key.font : UIFont(name: "CeraPro-Medium", size: 22)]
        let attributedString = NSMutableAttributedString(string:normalText1, attributes:attrs2 as [NSAttributedString.Key : Any])
        
        normalString2.append(attributedString)
        
        let boldText2 = " shape."
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
        
    }
    
    @IBAction func changeBrush(_ sender: UISlider) {
        brushWidth = CGFloat(sender.value)
        print(brushWidth)
    }
    
    //Cancella disegno.
    @IBAction func resetDraw(_ sender: Any) {
        elaboraDisegno.isEnabled = false
        tempDrawScars.image = nil
        points = []
    }
    
    
    //Disegnare.
    func drawLine(from fromPoint: CGPoint, to toPoint: CGPoint) {
        points.append(fromPoint)
        
        if(view.frame.width == 414){
            if(toPoint.y < 684 && toPoint.y > 215 && toPoint.x > 34 && toPoint.x < 380){
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
            }
        }else{
            if(toPoint.y < 634 && toPoint.y > 185 && toPoint.x > 34 && toPoint.x < 340){
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
            }
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

