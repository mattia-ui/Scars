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

class SharePage: UIViewController, UITextFieldDelegate, UITextViewDelegate{
    
    
    let dataBase = CKContainer.default().publicCloudDatabase

    var img = UIImage()
    @IBOutlet weak var screen: UIImageView!
    @IBOutlet weak var descriptionField: UITextView!
    @IBOutlet weak var label: UILabel!
   
    var i = 0

    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        screen.image = img

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        overrideUserInterfaceStyle = .light

        screen.layer.borderWidth = 0.5
               screen.layer.borderColor = CGColor(srgbRed: 0.46, green: 0.41, blue: 0.51, alpha: 1)
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))
               view.addGestureRecognizer(tap)
               descriptionField.smartInsertDeleteType = UITextSmartInsertDeleteType.no
               descriptionField.delegate = self
        
         var  normalText = "Sharing your emotions with others is \nvery important for your "
         var normalString = NSMutableAttributedString(string:normalText)
         let attributedString = NSMutableAttributedString(string:normalText)
         
         var boldText = "emotional state,\n"
             var attrs = [NSAttributedString.Key.font : UIFont(name: "CeraPro-Medium", size: 20)]
            let attributedString2 = NSMutableAttributedString(string:boldText, attributes:attrs as [NSAttributedString.Key : Any])
         attributedString.append(attributedString2)


                 normalText = "it "
                 normalString = NSMutableAttributedString(string:normalText)

                attributedString.append(normalString)
                
                 boldText = "increases self-esteem"
                 attrs = [NSAttributedString.Key.font : UIFont(name: "CeraPro-Medium", size: 20)]
                
                let attributedString3 = NSMutableAttributedString(string:boldText, attributes:attrs as [NSAttributedString.Key : Any])
                
                attributedString.append(attributedString3)
          
         normalText = ", decreases \ninsecurities, and makes you understand\nthat "
          normalString = NSMutableAttributedString(string:normalText)

         attributedString.append(normalString)
         
         boldText = "you are not alone"
          attrs = [NSAttributedString.Key.font : UIFont(name: "CeraPro-Medium", size: 20)]
         
         let attributedString4 = NSMutableAttributedString(string:boldText, attributes:attrs as [NSAttributedString.Key : Any])
         
         attributedString.append(attributedString4)
         
         normalText = ", ever.\n\n "
          normalString = NSMutableAttributedString(string:normalText)

         attributedString.append(normalString)
         
         normalText = "What are you waiting for?\nTell your story and share it on "
          normalString = NSMutableAttributedString(string:normalText)

         attributedString.append(normalString)
         
         boldText = "Instagram\n"
          attrs = [NSAttributedString.Key.font : UIFont(name: "CeraPro-Medium", size: 20)]
         
         let attributedString6 = NSMutableAttributedString(string:boldText, attributes:attrs as [NSAttributedString.Key : Any])
         
         attributedString.append(attributedString6)
         
         normalText = "with the hashtag "
                 normalString = NSMutableAttributedString(string:normalText)

                attributedString.append(normalString)
        
        boldText = "#skinsugi "
                 attrs = [NSAttributedString.Key.font : UIFont(name: "CeraPro-Medium", size: 20)]
                
                let attributedString7 = NSMutableAttributedString(string:boldText, attributes:attrs as [NSAttributedString.Key : Any])
                
                attributedString.append(attributedString7)
        
        normalText = "or send it to\nus anonymously, you can be inspiring\neven without showing your name! "
                        normalString = NSMutableAttributedString(string:normalText)

                       attributedString.append(normalString)
                       
                       label.attributedText = attributedString
        
        var  normalText2 = "Tell your story behind your indelible sign here…  - "
                var normalString2 = NSMutableAttributedString(string:normalText2)
                    let attrs3 = [NSAttributedString.Key.font : UIFont(name: "CeraPro-Light", size: 20)]
                let attributedString20 = NSMutableAttributedString(string:String(normalText2), attributes:attrs3 as [NSAttributedString.Key : Any])
                
        let boldText2 = "#skinsugi "
        let attrs2 = [NSAttributedString.Key.font : UIFont(name: "CeraPro-Regular", size: 20)]
                   let attributedString21 = NSMutableAttributedString(string:boldText2, attributes:attrs2 as [NSAttributedString.Key : Any])
                attributedString20.append(attributedString21)


                normalText2 = "(max 249 character)"
                normalString2 = NSMutableAttributedString(string:normalText2)
                let attrs4 = [NSAttributedString.Key.font : UIFont(name: "CeraPro-Light", size: 20)]
                let attributedString22 = NSMutableAttributedString(string:String(normalText2), attributes:attrs4 as [NSAttributedString.Key : Any])
               attributedString20.append(attributedString22)
        descriptionField.attributedText = attributedString20
    }
    
    @objc func dismissKeyboard() {
         view.endEditing(true)
    }
    
    func textViewShouldBeginEditing(_ textView: UITextView) -> Bool {
        if (i == 0){
            descriptionField.text = ""
            i = i + 1
        }
        return true
    }
       
    func textViewDidChange(_ textView: UITextView) {
        var t = descriptionField.text.dropLast(12)
        if(t.count > 2100){
            t = t.dropLast(t.count - 2100)
        }
        
        let  normalText = t
        _ = NSMutableAttributedString(string:String(normalText))
            let attrs2 = [NSAttributedString.Key.font : UIFont(name: "CeraPro-Light", size: 20)]
        let attributedString = NSMutableAttributedString(string:String(normalText), attributes:attrs2 as [NSAttributedString.Key : Any])
        
        let boldText = " - #skinsugi"
        let attrs = [NSAttributedString.Key.font : UIFont(name: "CeraPro-Regular", size: 20)]
           let attributedString2 = NSMutableAttributedString(string:boldText, attributes:attrs as [NSAttributedString.Key : Any])
        attributedString.append(attributedString2)
        
        descriptionField.font = UIFont(name: "CeraPro-Light", size: 20)
        descriptionField.attributedText = attributedString
        
        let arbitraryValue: Int = t.count
        if let newPosition = descriptionField.position(from: descriptionField.beginningOfDocument, offset: arbitraryValue) {
            descriptionField.selectedTextRange = textView.textRange(from: newPosition, to: newPosition)
        }
    }
    
    
//    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText newText: String) -> Bool {
//
//            var nsString:NSString = ""
//
//            if textView.text != nil  && newText != "" {
//                nsString = textView.text! as NSString
//                nsString = nsString.replacingCharacters(in: range, with: newText) as NSString
//            }   else if (newText == "") && textView.text != ""  {
//                nsString = textView.text! as NSString
//                nsString = nsString.replacingCharacters(in: range, with: newText) as NSString
//
//            } else if (newText == "") && textView.text == "" {
//                textView.text = ""
//            }
//
//           guard textView.text != nil else { return true }
//           let currentText = nsString as NSString
//        descriptionField.text = String(String(descriptionField.text).dropLast(11))
//        descriptionField.font = UIFont(name: "CeraPro-Light", size: 20)
//        descriptionField.text = "\(String(describing: descriptionField.text).dropFirst(9).dropLast(13)) #skinsugi"
//
//           countLabel.text = "\(textView.text.count + (newText.count - range.length))/250"
//
//           return currentText.length <= 249
//
//
//    //        countLabel.text = "\(answerText.text.count + (newText.count - range.length))/250"
//    //        countLabel.textColor = darkGrey
//    //        countLabel.font = UIFont(name: "NewYorkMedium-Regular", size: 16)
//    //        return answerText.text.count + (newText.count - range.length) <= 249
//        }

    
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
//            let storyboard = UIStoryboard(name: "Main", bundle: nil)
//            let secondVC = storyboard.instantiateViewController(withIdentifier: "postCollage")  as! PostCollage
//            self.navigationController?.pushViewController(secondVC, animated: true)
            
//            let PS = PostCollage()
//            PS.miniSym.image = self.img

        }
    }
    @IBAction func copys(_ sender: AnyObject) {
        
        UIPasteboard.general.string = descriptionField.text
        let ac = UIAlertController(title: "Description Copied", message: "Your description was copied successfully", preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "OK", style: .default))
        present(ac, animated: true)
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
        let secondVC = storyboard.instantiateViewController(withIdentifier: "postCollage")  as! PostCollage
        self.navigationController?.pushViewController(secondVC, animated: true)
        
        let PS = PostCollage()
        PS.miniSym.image = self.img

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "blur"){
            (segue.destination as! PostCollage).blur = 1
        }
    }
    
    @IBAction func notNow(_ sender: Any) {
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
        let secondVC = storyboard.instantiateViewController(withIdentifier: "postCollage")  as! PostCollage
        self.navigationController?.pushViewController(secondVC, animated: true)
    }
}

