//
//  ViewController.swift
//  Scar
//
//  Created by Mattia Cardone on 27/04/2020.
//  Copyright © 2020 Antonio Cimino. All rights reserved.
//

import UIKit
import CloudKit

struct backImagePalette {
    var name: String
}

struct backImage {
    var coolSquare: [backImagePalette]
    var warmSquare: [backImagePalette]
    var neutralSquare: [backImagePalette]
    var coolCircle: [backImagePalette]
    var warmCircle: [backImagePalette]
    var neutralCircle: [backImagePalette]
    var coolTriangle: [backImagePalette]
    var warmTriangle: [backImagePalette]
    var neutralTriangle: [backImagePalette]
    var coolRect: [backImagePalette]
    var warmRect: [backImagePalette]
    var neutralRect: [backImagePalette]
    var coolZigZag: [backImagePalette]
    var warmZigZag: [backImagePalette]
    var neutralZigZag: [backImagePalette]
}

struct topImage {
    var id = UUID()
    var name: String
}

var structBackImageType = [backImage(
    coolSquare: [backImagePalette(name:""),backImagePalette(name:""),backImagePalette(name:""),backImagePalette(name:"")],
    warmSquare: [backImagePalette(name:""),backImagePalette(name:""),backImagePalette(name:""),backImagePalette(name:"")],
    neutralSquare: [backImagePalette(name:""),backImagePalette(name:""),backImagePalette(name:""),backImagePalette(name:"")],
    coolCircle: [backImagePalette(name:""),backImagePalette(name:""),backImagePalette(name:""),backImagePalette(name:"")],
    warmCircle: [backImagePalette(name:""),backImagePalette(name:""),backImagePalette(name:""),backImagePalette(name:"")],
    neutralCircle: [backImagePalette(name:""),backImagePalette(name:""),backImagePalette(name:""),backImagePalette(name:"")],
    coolTriangle: [backImagePalette(name:""),backImagePalette(name:""),backImagePalette(name:""),backImagePalette(name:"")],
    warmTriangle: [backImagePalette(name:""),backImagePalette(name:""),backImagePalette(name:""),backImagePalette(name:"")],
    neutralTriangle: [backImagePalette(name:""),backImagePalette(name:""),backImagePalette(name:""),backImagePalette(name:"")],
    coolRect: [backImagePalette(name:""),backImagePalette(name:""),backImagePalette(name:""),backImagePalette(name:"")],
    warmRect: [backImagePalette(name:""),backImagePalette(name:""),backImagePalette(name:""),backImagePalette(name:"")],
    neutralRect: [backImagePalette(name:""),backImagePalette(name:""),backImagePalette(name:""),backImagePalette(name:"")],
    coolZigZag: [backImagePalette(name:""),backImagePalette(name:""),backImagePalette(name:""),backImagePalette(name:"")],
    warmZigZag: [backImagePalette(name:""),backImagePalette(name:""),backImagePalette(name:""),backImagePalette(name:"")],
    neutralZigZag: [backImagePalette(name:""),backImagePalette(name:""),backImagePalette(name:""),backImagePalette(name:"")]
)]

class Collage: UIViewController, UITextFieldDelegate  {
    
    @IBOutlet weak var scarsImage: UIImageView!
    @IBOutlet weak var descriptionField: UITextField!
    @IBOutlet weak var activityField: UIActivityIndicatorView!
    
    @IBOutlet weak var top: UIImageView!
    @IBOutlet weak var screen: UIImageView!
    var imgPrincipale:UIImage?

    let dataBase = CKContainer.default().publicCloudDatabase
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if(ChooseShape.shape1 == "square"){
            if(ChoosePalette.color == "cool"){
                let randomInt = Int.random(in: 0..<4)
                imgPrincipale = UIImage(named: structBackImageType[0].coolSquare[randomInt].name)
            } else if(ChoosePalette.color == "warm"){
                let randomInt = Int.random(in: 0..<4)
                imgPrincipale = UIImage(named: structBackImageType[0].warmSquare[randomInt].name)
            } else {
                let randomInt = Int.random(in: 0..<4)
                imgPrincipale = UIImage(named: structBackImageType[0].neutralSquare[randomInt].name)
            }
        } else if(ChooseShape.shape1 == "circle"){
            if(ChoosePalette.color == "cool"){
                let randomInt = Int.random(in: 0..<4)
                imgPrincipale = UIImage(named: structBackImageType[0].coolCircle[randomInt].name)
            } else if(ChoosePalette.color == "warm"){
                let randomInt = Int.random(in: 0..<4)
                imgPrincipale = UIImage(named: structBackImageType[0].warmCircle[randomInt].name)
            } else {
                let randomInt = Int.random(in: 0..<4)
                imgPrincipale = UIImage(named: structBackImageType[0].neutralCircle[randomInt].name)
            }
        } else if(ChooseShape.shape1 == "triangle"){
            if(ChoosePalette.color == "cool"){
                let randomInt = Int.random(in: 0..<4)
                imgPrincipale = UIImage(named: structBackImageType[0].coolTriangle[randomInt].name)
            } else if(ChoosePalette.color == "warm"){
                let randomInt = Int.random(in: 0..<4)
                imgPrincipale = UIImage(named: structBackImageType[0].warmTriangle[randomInt].name)
            } else {
                let randomInt = Int.random(in: 0..<4)
                imgPrincipale = UIImage(named: structBackImageType[0].neutralTriangle[randomInt].name)
            }
        } else if(ChooseShape.shape1 == "rect"){
            if(ChoosePalette.color == "cool"){
                let randomInt = Int.random(in: 0..<4)
                imgPrincipale = UIImage(named: structBackImageType[0].coolRect[randomInt].name)
            } else if(ChoosePalette.color == "warm"){
                let randomInt = Int.random(in: 0..<4)
                imgPrincipale = UIImage(named: structBackImageType[0].warmRect[randomInt].name)
            } else {
                let randomInt = Int.random(in: 0..<4)
                imgPrincipale = UIImage(named: structBackImageType[0].neutralRect[randomInt].name)
            }
        } else {
            if(ChoosePalette.color == "cool"){
                let randomInt = Int.random(in: 0..<4)
                imgPrincipale = UIImage(named: structBackImageType[0].coolZigZag[randomInt].name)
            } else if(ChoosePalette.color == "warm"){
                let randomInt = Int.random(in: 0..<4)
                imgPrincipale = UIImage(named: structBackImageType[0].warmZigZag[randomInt].name)
            } else {
                let randomInt = Int.random(in: 0..<4)
                imgPrincipale = UIImage(named: structBackImageType[0].neutralZigZag[randomInt].name)
            }
        }

        imgPrincipale = top.image
        mergeTwoImages(principale: imgPrincipale ?? UIImage(), aggiunta: UIImage(named: "arancione") ?? UIImage(), x: 10, y: 10, width: 150, height: 150)
        mergeTwoImages(principale: imgPrincipale ?? UIImage(), aggiunta: UIImage(named: "arancione") ?? UIImage(), x: 530, y: 530, width: 150, height: 150)

        
        if let dir = try? FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false) {
            scarsImage.image = UIImage(named: "2-.jpg")
            let maskView = UIImageView()
            maskView.image = UIImage(contentsOfFile: URL(fileURLWithPath: dir.absoluteString).appendingPathComponent("copy.png").path)
            maskView.frame =  scarsImage.bounds
            scarsImage.mask = maskView
        }
            
//        imgPrincipale = topp.image
//        mergeTwoImages(principale: imgPrincipale ?? UIImage(), aggiunta: UIImage(named: "arancione") ?? UIImage(), x: 10, y: 10, width: 150, height: 150)
//        mergeTwoImages(principale: imgPrincipale ?? UIImage(), aggiunta: UIImage(named: "arancione") ?? UIImage(), x: 530, y: 530, width: 150, height: 150)
             
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))
        view.addGestureRecognizer(tap)
        descriptionField.smartInsertDeleteType = UITextSmartInsertDeleteType.no
        descriptionField.delegate = self
            
        screen.image = cropBottomImage(image: view.snapshot() ?? UIImage())
//      screen.image = view.snapshot()
    }
        
    func mergeTwoImages(principale: UIImage, aggiunta: UIImage, x: CGFloat, y: CGFloat, width: CGFloat, height: CGFloat){
        let size = CGSize(width: principale.size.width, height: principale.size.height)
        UIGraphicsBeginImageContext(size)
            
        let areaPrincipale = CGRect(x: 0, y: 0, width: size.width, height: size.height)
        let areaSecondaria = CGRect(x: x, y: y, width: width, height: height)
            
        principale.draw(in: areaPrincipale)
        aggiunta.draw(in: areaSecondaria, blendMode: .normal, alpha: 1)
            
        let finalImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        top.image = finalImage
            
        imgPrincipale = finalImage
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
        
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        guard let textFieldText = descriptionField.text,
        let rangeOfTextToReplace = Range(range, in: textFieldText) else {return false}
        let substringToReplace = textFieldText[rangeOfTextToReplace]
        let count = textFieldText.count - substringToReplace.count + string.count
        return count <= 250
    }
        
    @IBAction func shareImg(_ sender: Any) {
        let firstActivityItem = "\(String(describing: descriptionField))"
        let secondActivityItem : NSURL = NSURL(string: "http//:hangme")!
        let image : UIImage =  screen.image!
        let activityViewController : UIActivityViewController = UIActivityViewController(
            activityItems: [firstActivityItem, secondActivityItem, image], applicationActivities: nil)
        activityViewController.popoverPresentationController?.sourceView = (sender as! UIButton)
        activityViewController.popoverPresentationController?.permittedArrowDirections = UIPopoverArrowDirection.up
        activityViewController.popoverPresentationController?.sourceRect = CGRect(x: 150, y: 150, width: 0, height: 0)
        activityViewController.excludedActivityTypes = [
            UIActivity.ActivityType.postToWeibo,
            UIActivity.ActivityType.print,
            UIActivity.ActivityType.assignToContact,
            UIActivity.ActivityType.saveToCameraRoll,
            UIActivity.ActivityType.addToReadingList,
            UIActivity.ActivityType.postToFlickr,
            UIActivity.ActivityType.postToVimeo,
            UIActivity.ActivityType.postToTencentWeibo,
            UIActivity.ActivityType.postToFacebook,
            UIActivity.ActivityType.postToTwitter,
        ]
        self.present(activityViewController, animated: true, completion: nil)
    }

    @IBAction func shareUnkown(_ sender: Any) {
        let ourRecord = CKRecord(recordType: "PublicInfo")
        ourRecord.setObject(descriptionField?.text as __CKRecordObjCValue?, forKey: "Description")
        self.activityField.startAnimating()
                     
        let mngr = FileManager.default
        let dir = mngr.urls(for: .documentDirectory, in: .userDomainMask)
        let file = dir[0].appendingPathComponent("myImage").path
                     
        do {
            try screen.image?.jpegData(compressionQuality: 0.5)?.write(to: URL(fileURLWithPath: file))
            let url = NSURL.fileURL(withPath: file)
            let imageAsset = CKAsset(fileURL: url)
            ourRecord.setObject(imageAsset as CKAsset, forKey: "Photo")
            print("\(url)")
        } catch _ {
            print("error")
        }
                     
        dataBase.save(ourRecord,completionHandler:  {(record, error) -> Void in
            if error != nil {
                print("error to save" + error.debugDescription)
            } else {
                print("save succesfull")
            }
                         
            DispatchQueue.main.async{
                self.activityField.stopAnimating()
            }
        })
    }
    
    func cropImage(image:UIImage, toRect rect:CGRect) -> UIImage{
        let imageRef:CGImage = image.cgImage!.cropping(to: rect)!
        let croppedImage:UIImage = UIImage(cgImage:imageRef)
        return croppedImage
    }
    
    func cropBottomImage(image: UIImage) -> UIImage {
        let height = CGFloat(850)
        print(image.size.width)
        let rect = CGRect(x: 0, y: 300, width: 850, height: height)
        return cropImage(image: image, toRect: rect)
    }
}


extension UIView {
    func snapshot() -> UIImage? {
        UIGraphicsBeginImageContextWithOptions(self.bounds.size, true, UIScreen.main.scale)
        self.layer.render(in: UIGraphicsGetCurrentContext()!)
        let img = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return img
    }
}
