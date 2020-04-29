//
//  ViewController.swift
//  Scar
//
//  Created by Mattia Cardone on 27/04/2020.
//  Copyright © 2020 Antonio Cimino. All rights reserved.
//

import UIKit
import CloudKit

class Collage: UIViewController, UITextFieldDelegate  {
    
    @IBOutlet weak var scarsImage: UIImageView!
    @IBOutlet weak var descriptionField: UITextField!
    @IBOutlet weak var activityField: UIActivityIndicatorView!
    
     @IBOutlet weak var topp: UIImageView!
        @IBOutlet weak var screen: UIImageView!
        var imgPrincipale:UIImage?

        let dataBase = CKContainer.default().publicCloudDatabase
        
        override func viewDidLoad() {
            imgPrincipale = topp.image
                   
                   mergeTwoImages(principale: imgPrincipale ?? UIImage(), aggiunta: UIImage(named: "arancione") ?? UIImage(), x: 10, y: 10, width: 150, height: 150)
                   
                    mergeTwoImages(principale: imgPrincipale ?? UIImage(), aggiunta: UIImage(named: "arancione") ?? UIImage(), x: 530, y: 530, width: 150, height: 150)

            super.viewDidLoad()
            if let dir = try? FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false) {
                scarsImage.image = UIImage(named: "2-.jpg")
                let maskView = UIImageView()
                maskView.image = UIImage(contentsOfFile: URL(fileURLWithPath: dir.absoluteString).appendingPathComponent("copy.png").path)
                maskView.frame =  scarsImage.bounds
                scarsImage.mask = maskView
            }
            
            imgPrincipale = topp.image
            
            mergeTwoImages(principale: imgPrincipale ?? UIImage(), aggiunta: UIImage(named: "arancione") ?? UIImage(), x: 10, y: 10, width: 150, height: 150)
            
             mergeTwoImages(principale: imgPrincipale ?? UIImage(), aggiunta: UIImage(named: "arancione") ?? UIImage(), x: 530, y: 530, width: 150, height: 150)
             
            
            let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))
            view.addGestureRecognizer(tap)
            descriptionField.smartInsertDeleteType = UITextSmartInsertDeleteType.no
            descriptionField.delegate = self
            
            screen.image = cropBottomImage(image: view.snapshot() ?? UIImage())
    //        screen.image = view.snapshot()
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
            topp.image = finalImage
            
            imgPrincipale = finalImage


        }
        @objc func dismissKeyboard() {
            view.endEditing(true)
        }
        
        func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
            guard let textFieldText = descriptionField.text,
                let rangeOfTextToReplace = Range(range, in: textFieldText) else {
                    return false
            }
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
