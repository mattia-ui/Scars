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

    static var imageScars: UIImage!
    var lastPoint = CGPoint.zero
    var color = UIColor.black
    var brushWidth: CGFloat = 10.0
    var opacity: CGFloat = 1.0
    var swiped = false
    var points = [CGPoint] ()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        pictureScars.image = ViewController.imageScars
    }
    
    @IBAction func changeBrush(_ sender: UISlider) {
        brushWidth = CGFloat(sender.value)
        print(brushWidth)
    }
    
    //Cancella disegno.
    @IBAction func resetDraw(_ sender: Any) {
        tempDrawScars.image = nil
        points = []
    }
    
    
    //Disegnare.
    func drawLine(from fromPoint: CGPoint, to toPoint: CGPoint) {
        points.append(fromPoint)
        
        if(toPoint.y < 800){
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
        }
    }
      
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else {return}
        swiped = false
        lastPoint = touch.location(in: view)
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

