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
    
    let dataBase = CKContainer.default().publicCloudDatabase
    
    override func
        viewDidLoad() {
        super.viewDidLoad()
        if let dir = try? FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false) {
            scarsImage.image = UIImage(named: "2-.jpg")
            let maskView = UIImageView()
            maskView.image = UIImage(contentsOfFile: URL(fileURLWithPath: dir.absoluteString).appendingPathComponent("copy.png").path)
            maskView.frame =  scarsImage.bounds
            scarsImage.mask = maskView
        }
        
            let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))

                view.addGestureRecognizer(tap)
            
                descriptionField.smartInsertDeleteType = UITextSmartInsertDeleteType.no
                descriptionField.delegate = self
            
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
        guard let instagramUrl = URL(string: "instagram://app") else {
            return
        }
        if UIApplication.shared.canOpenURL(instagramUrl) {
            guard let imageData = scarsImage.image!.jpegData(compressionQuality: 100) else {
                return
            }
            let path = (NSTemporaryDirectory() as NSString).appendingPathComponent("instagram.ig")
            let fileUrl = URL(fileURLWithPath: path)
            do {
                try imageData.write(to: fileUrl, options: .atomic)
            } catch {
                return
            }
            let documentController = UIDocumentInteractionController(url: fileUrl)
            documentController.delegate = self as? UIDocumentInteractionControllerDelegate
            documentController.uti = "com.instagram.photo"
            documentController.presentOpenInMenu(from: self.view.frame, in: self.view, animated: true)
        } else {
            print("Istagram no istalled")
        }
    }

    
    @IBAction func shareUnkown(_ sender: Any) {
        let ourRecord = CKRecord(recordType: "PublicInfo")
        ourRecord.setObject(descriptionField?.text as __CKRecordObjCValue?, forKey: "Description")
        self.activityField.startAnimating()
                 
        let mngr = FileManager.default
        let dir = mngr.urls(for: .documentDirectory, in: .userDomainMask)
        let file = dir[0].appendingPathComponent("myImage").path
                 
        do {
            try scarsImage.image?.jpegData(compressionQuality: 0.5)?.write(to: URL(fileURLWithPath: file))
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
}
