//
//  CaricaImage.swift
//  Scar
//
//  Created by Mattia Cardone on 02/05/2020.
//  Copyright © 2020 Mattia Cardone. All rights reserved.
//

import UIKit
import SQLite3

class CaricaImage: UIViewController {

    var id: Int!
    @IBOutlet weak var testo: UILabel!
    @IBOutlet weak var imageSelected: UIImageView!
    var text:[String] = []
    
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
            text = ENG.textOnCaricaImage
        } else if (lingua == "ita"){
            text = ITA.textOnCaricaImage
        }
        
        imageSelected.image = SecretCollection.allImages?[id]
        testo.text = SecretCollection.allDescr?[id]
    }
        
    @IBAction func share(_ sender: Any) {
        let firstActivityItem = "\(String(describing: testo))"
        let secondActivityItem : NSURL = NSURL(string: "http//:hangme")!
        let image : UIImage =  imageSelected.image!
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
}
