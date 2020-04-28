//
//  ViewController.swift
//  Scar
//
//  Created by Mattia Cardone on 27/04/2020.
//  Copyright © 2020 Mattia Cardone. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate  {

    @IBOutlet weak var pictureScars: UIImageView!
    @IBOutlet weak var drawScars: UIImageView!
    @IBOutlet weak var tempDrawScars: UIImageView!

    var imagePicker: UIImagePickerController!
    var lastPoint = CGPoint.zero
    var color = UIColor.black
    var brushWidth: CGFloat = 10.0
    var opacity: CGFloat = 1.0
    var swiped = false
    var points = [CGPoint] ()

    
    override func viewDidLoad() {
        super.viewDidLoad()
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
        pictureScars.image = info[.originalImage] as? UIImage
    }
    
    
    
    //Cancella disegno.
    @IBAction func resetDraw(_ sender: Any) {
        drawScars.image = nil
        points = []
    }
    
    
    
    //Disegnare.
    func drawLine(from fromPoint: CGPoint, to toPoint: CGPoint) {
        points.append(fromPoint)
        
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
        
        // Merge tempImageView into mainImageView
        UIGraphicsBeginImageContext(drawScars.frame.size)
        drawScars.image?.draw(in: view.bounds, blendMode: .normal, alpha: 1.0)
        tempDrawScars?.image?.draw(in: view.bounds, blendMode: .normal, alpha: opacity)
        drawScars.image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        tempDrawScars.image = nil
    }
    
    
    
    //Elabora foto.
    @IBAction func drawElaboration(_ sender: Any) {
        
        UIGraphicsBeginImageContext(view.frame.size)
        guard let context = UIGraphicsGetCurrentContext() else {return}
        tempDrawScars.image?.draw(in: view.bounds)
        for i in 0...points.count-1 {
          for j in 0...points.count-1 {
            print(points[i])
            context.move(to: points[i])
            context.addLine(to: points[j])
            context.setLineCap(.round)
            context.setBlendMode(.normal)
            context.setLineWidth(brushWidth)
            context.setStrokeColor(color.cgColor)
            context.strokePath()
          }
        }
        tempDrawScars.image = UIGraphicsGetImageFromCurrentImageContext()
        tempDrawScars.alpha = opacity
        UIGraphicsBeginImageContext(drawScars.frame.size)
        drawScars.image?.draw(in: view.bounds, blendMode: .normal, alpha: 1.0)
        tempDrawScars?.image?.draw(in: view.bounds, blendMode: .normal, alpha: opacity)
        drawScars.image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        tempDrawScars.image = nil
        
        if let image = drawScars.image {
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

