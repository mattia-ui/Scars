//
//  SharePage.swift
//  Scar
//
//  Created by Silvio Cresci on 26/05/2020.
//  Copyright © 2020 Mattia Cardone. All rights reserved.
//

import UIKit
import CloudKit
import SQLite3

class SharePage: UIViewController, UITextFieldDelegate{
    
    
    let dataBase = CKContainer.default().publicCloudDatabase

    var img = UIImage()
    @IBOutlet weak var screen: UIImageView!
    @IBOutlet weak var descriptionField: UITextField!
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        screen.image = img
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
           let rangeOfTextToReplace = Range(range, in: textFieldText) else {return false}
           let substringToReplace = textFieldText[rangeOfTextToReplace]
           let count = textFieldText.count - substringToReplace.count + string.count
           return count <= 250
       }

    
    @IBAction func shareUnkown(_ sender: Any) {
        let ourRecord = CKRecord(recordType: "PublicInfo")
        ourRecord.setObject(descriptionField?.text as __CKRecordObjCValue?, forKey: "Description")
        
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
        })
        
        //Si connette al DB
        var db: OpaquePointer?
        let fileURL = try!
        FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false).appendingPathComponent("Database.sqlite")
        if sqlite3_open(fileURL.path, &db) != SQLITE_OK {
            print("error opening database")
        }
        
        //Update Valore
        var stmt: OpaquePointer?
        var queryString = "UPDATE Collage SET valore = 'no' WHERE id = 1;"
        sqlite3_prepare(db, queryString, -1, &stmt, nil)
        sqlite3_step(stmt)
        print("Saved successfully")
        
        DispatchQueue.main.async{
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let secondVC = storyboard.instantiateViewController(withIdentifier: "settoreImage")  as! Schermata3
            self.navigationController?.pushViewController(secondVC, animated: true)
        }
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
        
        //Si connette al DB
        var db: OpaquePointer?
        let fileURL = try!
        FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false).appendingPathComponent("Database.sqlite")
        if sqlite3_open(fileURL.path, &db) != SQLITE_OK {
            print("error opening database")
        }
                      
        //Update Valore
        var stmt: OpaquePointer?
        let queryString = "UPDATE Collage SET valore = 'no' WHERE id = 1;"
        sqlite3_prepare(db, queryString, -1, &stmt, nil)
        sqlite3_step(stmt)
        print("Saved successfully")
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let secondVC = storyboard.instantiateViewController(withIdentifier: "settoreImage")  as! Schermata3
        self.navigationController?.pushViewController(secondVC, animated: true)
    }
}

