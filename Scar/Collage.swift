//
//  ViewController.swift
//  Scar
//
//  Created by Mattia Cardone on 27/04/2020.
//  Copyright © 2020 Antonio Cimino. All rights reserved.
//

import UIKit
import CloudKit
import SQLite3

struct backImagePalette {
    var name: String
}

struct topImageTexture {
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
    var seaSquare: [topImageTexture]
    var woodSquare: [topImageTexture]
    var texileSquare: [topImageTexture]
    var cratereSquare: [topImageTexture]
    var marbleSquare: [topImageTexture]
    var seaCircle: [topImageTexture]
    var woodCircle: [topImageTexture]
    var texileCircle: [topImageTexture]
    var cratereCircle: [topImageTexture]
    var marbleCircle: [topImageTexture]
    var seaTriangle: [topImageTexture]
    var woodTriangle: [topImageTexture]
    var texileTriangle: [topImageTexture]
    var cratereTriangle: [topImageTexture]
    var marbleTriangle: [topImageTexture]
    var seaRect: [topImageTexture]
    var woodRect: [topImageTexture]
    var texileRect: [topImageTexture]
    var cratereRect: [topImageTexture]
    var marbleRect: [topImageTexture]
    var seaZigZag: [topImageTexture]
    var woodZigZag: [topImageTexture]
    var texileZigZag: [topImageTexture]
    var cratereZigZag: [topImageTexture]
    var marbleZigZag: [topImageTexture]
}


var structBackImageType = [backImage(
    coolSquare: [backImagePalette(name:"QRosa"),backImagePalette(name:"QRoss"),backImagePalette(name:"QAr"),backImagePalette(name:"QGia")],
    warmSquare: [backImagePalette(name:"QAzz"),backImagePalette(name:"QVer"),backImagePalette(name:"QVi"),backImagePalette(name:"QBl")],
    neutralSquare: [backImagePalette(name:"QMarrone"),backImagePalette(name:"QMarr"),backImagePalette(name:"QNer"),backImagePalette(name:"QGr")],
    coolCircle: [backImagePalette(name:"CRosa"),backImagePalette(name:"CRoss"),backImagePalette(name:"CAr"),backImagePalette(name:"CGia")],
    warmCircle: [backImagePalette(name:"CAzz"),backImagePalette(name:"CVer"),backImagePalette(name:"CVi"),backImagePalette(name:"CBl")],
    neutralCircle: [backImagePalette(name:"CMarrone"),backImagePalette(name:"CMarr"),backImagePalette(name:"CNer"),backImagePalette(name:"CGr")],
    coolTriangle: [backImagePalette(name:"TRosa"),backImagePalette(name:"TRoss"),backImagePalette(name:"TAr"),backImagePalette(name:"TGia")],
    warmTriangle: [backImagePalette(name:"TAzz"),backImagePalette(name:"TVer"),backImagePalette(name:"TVi"),backImagePalette(name:"TBl")],
    neutralTriangle: [backImagePalette(name:"TMarrone"),backImagePalette(name:"TMarr"),backImagePalette(name:"TNer"),backImagePalette(name:"TGr")],
    coolRect: [backImagePalette(name:"RRosa"),backImagePalette(name:"RRoss"),backImagePalette(name:"RAr"),backImagePalette(name:"RGia")],
    warmRect: [backImagePalette(name:"RAzz"),backImagePalette(name:"RVer"),backImagePalette(name:"RVi"),backImagePalette(name:"RBl")],
    neutralRect: [backImagePalette(name:"RMarrone"),backImagePalette(name:"RMarr"),backImagePalette(name:"RNer"),backImagePalette(name:"RGr")],
    coolZigZag: [backImagePalette(name:"ORosa"),backImagePalette(name:"ORoss"),backImagePalette(name:"OAr"),backImagePalette(name:"OGia")],
    warmZigZag: [backImagePalette(name:"OAzz"),backImagePalette(name:"OVer"),backImagePalette(name:"OVi"),backImagePalette(name:"OBl")],
    neutralZigZag: [backImagePalette(name:"OMarrone"),backImagePalette(name:"OMarr"),backImagePalette(name:"ONer"),backImagePalette(name:"OGr")]
)]

var structTopImageType = [topImage(
    seaSquare: [topImageTexture(name:"SQAr"),topImageTexture(name:"SQAzz"),topImageTexture(name:"SQBl"),topImageTexture(name:"SQGia"),topImageTexture(name:"SQGr"),topImageTexture(name:"SQMarr"),topImageTexture(name:"SQMarrone"),topImageTexture(name:"SQNer"),topImageTexture(name:"SQRosa"),topImageTexture(name:"SQRoss"),topImageTexture(name:"SQVer.png"),topImageTexture(name:"SQVi")],
    woodSquare: [topImageTexture(name:"WQAr"),topImageTexture(name:"WQAzz"),topImageTexture(name:"WQBl"),topImageTexture(name:"WQGia"),topImageTexture(name:"WQGr"),topImageTexture(name:"WQMarr"),topImageTexture(name:"WQMarrone"),topImageTexture(name:"WQNer"),topImageTexture(name:"WQRosa"),topImageTexture(name:"WQRoss"),topImageTexture(name:"WQVer"),topImageTexture(name:"WQVi")],
    texileSquare: [topImageTexture(name:"TQAr"),topImageTexture(name:"TQAzz"),topImageTexture(name:"TQBl"),topImageTexture(name:"TQGia"),topImageTexture(name:"TQGr"),topImageTexture(name:"TQMarr"),topImageTexture(name:"TQMarrone"),topImageTexture(name:"TQNer"),topImageTexture(name:"TQRosa"),topImageTexture(name:"TQRoss"),topImageTexture(name:"TQVer"),topImageTexture(name:"TQVi")],
    cratereSquare: [topImageTexture(name:"CQAr"),topImageTexture(name:"CQAzz"),topImageTexture(name:"CQBl"),topImageTexture(name:"CQGia"),topImageTexture(name:"CQGr"),topImageTexture(name:"CQMarr"),topImageTexture(name:"CQMarrone"),topImageTexture(name:"CQNer"),topImageTexture(name:"CQRosa"),topImageTexture(name:"CQRoss"),topImageTexture(name:"CQVer"),topImageTexture(name:"CQVi")],
    marbleSquare: [topImageTexture(name:"MQAr"),topImageTexture(name:"MQAzz"),topImageTexture(name:"MQBl"),topImageTexture(name:"MQGia"),topImageTexture(name:"MQGr"),topImageTexture(name:"MQMarr"),topImageTexture(name:"MQMarrone"),topImageTexture(name:"MQNer"),topImageTexture(name:"MQRosa"),topImageTexture(name:"MQRoss"),topImageTexture(name:"MQVer"),topImageTexture(name:"MQVi")],
    seaCircle: [topImageTexture(name:"SCAr"),topImageTexture(name:"SCAzz"),topImageTexture(name:"SCBl"),topImageTexture(name:"SCGia"),topImageTexture(name:"SCGr"),topImageTexture(name:"SCMarr"),topImageTexture(name:"SCMarrone"),topImageTexture(name:"SCNer"),topImageTexture(name:"SCRosa"),topImageTexture(name:"SCRoss"),topImageTexture(name:"SCVer"),topImageTexture(name:"SCVi")],
    woodCircle: [topImageTexture(name:"WCAr"),topImageTexture(name:"WCAzz"),topImageTexture(name:"WCBl"),topImageTexture(name:"WCGia"),topImageTexture(name:"WCGr"),topImageTexture(name:"WCMarr"),topImageTexture(name:"WCMarrone"),topImageTexture(name:"WCNer"),topImageTexture(name:"WCRosa"),topImageTexture(name:"WCRoss"),topImageTexture(name:"WCVer"),topImageTexture(name:"WCVi")],
    texileCircle: [topImageTexture(name:"TCAr"),topImageTexture(name:"TCAzz"),topImageTexture(name:"TCBl"),topImageTexture(name:"TCGia"),topImageTexture(name:"TCGr"),topImageTexture(name:"TCMarr"),topImageTexture(name:"TCMarrone"),topImageTexture(name:"TCNer"),topImageTexture(name:"TCRosa"),topImageTexture(name:"TCRoss"),topImageTexture(name:"TCVer"),topImageTexture(name:"TCVi")],
    cratereCircle: [topImageTexture(name:"CCAr"),topImageTexture(name:"CCAzz"),topImageTexture(name:"CCBl"),topImageTexture(name:"CCGia"),topImageTexture(name:"CCGr"),topImageTexture(name:"CCMarr"),topImageTexture(name:"CCMarrone"),topImageTexture(name:"CCNer"),topImageTexture(name:"CCRosa"),topImageTexture(name:"CCRoss"),topImageTexture(name:"CCVer"),topImageTexture(name:"CCVi")],
    marbleCircle: [topImageTexture(name:"MCAr"),topImageTexture(name:"MCAzz"),topImageTexture(name:"MCBl"),topImageTexture(name:"MCGia"),topImageTexture(name:"MCGr"),topImageTexture(name:"MCMarr"),topImageTexture(name:"MCMarrone"),topImageTexture(name:"MCNer"),topImageTexture(name:"MCRosa"),topImageTexture(name:"MCRoss"),topImageTexture(name:"MCVer"),topImageTexture(name:"MCVi")],
    seaTriangle: [topImageTexture(name:"STAr"),topImageTexture(name:"STAzz"),topImageTexture(name:"STBl"),topImageTexture(name:"STGia"),topImageTexture(name:"STGr"),topImageTexture(name:"STMarr"),topImageTexture(name:"STMarrone"),topImageTexture(name:"STNer"),topImageTexture(name:"STRosa"),topImageTexture(name:"STRoss"),topImageTexture(name:"STVer"),topImageTexture(name:"STVi")],
    woodTriangle: [topImageTexture(name:"WTAr"),topImageTexture(name:"WTAzz"),topImageTexture(name:"WTBl"),topImageTexture(name:"WTGia"),topImageTexture(name:"WTGr"),topImageTexture(name:"WTMarr"),topImageTexture(name:"WTMarrone"),topImageTexture(name:"WTNer"),topImageTexture(name:"WTRosa"),topImageTexture(name:"WTRoss"),topImageTexture(name:"WTVer"),topImageTexture(name:"WTVi")],
    texileTriangle: [topImageTexture(name:"TTAr"),topImageTexture(name:"TTAzz"),topImageTexture(name:"TTBl"),topImageTexture(name:"TTGia"),topImageTexture(name:"TTGr"),topImageTexture(name:"TTMarr"),topImageTexture(name:"TTMarrone"),topImageTexture(name:"TTNer"),topImageTexture(name:"TTRosa"),topImageTexture(name:"TTRoss"),topImageTexture(name:"TTVer"),topImageTexture(name:"TTVi")],
    cratereTriangle: [topImageTexture(name:"CTAr"),topImageTexture(name:"CTAzz"),topImageTexture(name:"CTBl"),topImageTexture(name:"CTGia"),topImageTexture(name:"CTGr"),topImageTexture(name:"CTMarr"),topImageTexture(name:"CTMarrone"),topImageTexture(name:"CTNer"),topImageTexture(name:"CTRosa"),topImageTexture(name:"CTRoss"),topImageTexture(name:"CTVer"),topImageTexture(name:"CTVi")],
    marbleTriangle: [topImageTexture(name:"MTAr"),topImageTexture(name:"MTAzz"),topImageTexture(name:"MTBl"),topImageTexture(name:"MTGia"),topImageTexture(name:"MTGr"),topImageTexture(name:"MTMarr"),topImageTexture(name:"MTMarrone"),topImageTexture(name:"MTNer"),topImageTexture(name:"MTRosa"),topImageTexture(name:"MTRoss"),topImageTexture(name:"MTVer"),topImageTexture(name:"MTVi")],
    seaRect: [topImageTexture(name:"SRAr"),topImageTexture(name:"SRAzz"),topImageTexture(name:"SRBl"),topImageTexture(name:"SRGia"),topImageTexture(name:"SRGr"),topImageTexture(name:"SRMarr"),topImageTexture(name:"SRMarrone"),topImageTexture(name:"SRNer"),topImageTexture(name:"SRRosa"),topImageTexture(name:"SRRoss"),topImageTexture(name:"SRVer"),topImageTexture(name:"SRVi")],
    woodRect: [topImageTexture(name:"WRAr"),topImageTexture(name:"WRAzz"),topImageTexture(name:"WRBl"),topImageTexture(name:"WRGia"),topImageTexture(name:"WRGr"),topImageTexture(name:"WRMarr"),topImageTexture(name:"WRMarrone"),topImageTexture(name:"WRNer"),topImageTexture(name:"WRRosa"),topImageTexture(name:"WRRoss"),topImageTexture(name:"WRVer"),topImageTexture(name:"WRVi")],
    texileRect: [topImageTexture(name:"TRAr"),topImageTexture(name:"TRAzz"),topImageTexture(name:"TRBl"),topImageTexture(name:"TRGia"),topImageTexture(name:"TRGr"),topImageTexture(name:"TRMarr"),topImageTexture(name:"TRMarrone"),topImageTexture(name:"TRNer"),topImageTexture(name:"TRRosa"),topImageTexture(name:"TRRoss"),topImageTexture(name:"TRVer"),topImageTexture(name:"TRVi")],
    cratereRect: [topImageTexture(name:"CRAr"),topImageTexture(name:"CRAzz"),topImageTexture(name:"CRBl"),topImageTexture(name:"CRGia"),topImageTexture(name:"CRGr"),topImageTexture(name:"CRMarr"),topImageTexture(name:"CRMarrone"),topImageTexture(name:"CRNer"),topImageTexture(name:"CRRosa"),topImageTexture(name:"CRRoss"),topImageTexture(name:"CRVer"),topImageTexture(name:"CRVi")],
    marbleRect: [topImageTexture(name:"MRAr"),topImageTexture(name:"MRAzz"),topImageTexture(name:"MRBl"),topImageTexture(name:"MRGia"),topImageTexture(name:"MRGr"),topImageTexture(name:"MRMarr"),topImageTexture(name:"MRMarrone"),topImageTexture(name:"MRNer"),topImageTexture(name:"MRRosa"),topImageTexture(name:"MRRoss"),topImageTexture(name:"MRVer"),topImageTexture(name:"MRVi")],
    seaZigZag: [topImageTexture(name:"SOAr"),topImageTexture(name:"SOAzz"),topImageTexture(name:"SOBl"),topImageTexture(name:"SOGia"),topImageTexture(name:"SOGr"),topImageTexture(name:"SOMarr"),topImageTexture(name:"SOMarrone"),topImageTexture(name:"SONer"),topImageTexture(name:"SORosa"),topImageTexture(name:"SORoss"),topImageTexture(name:"SOVer"),topImageTexture(name:"SOVi")],
    woodZigZag: [topImageTexture(name:"WOAr"),topImageTexture(name:"WOAzz"),topImageTexture(name:"WOBl"),topImageTexture(name:"WOGia"),topImageTexture(name:"WOGr"),topImageTexture(name:"WOMarr"),topImageTexture(name:"WOMarrone"),topImageTexture(name:"WONer"),topImageTexture(name:"WORosa"),topImageTexture(name:"WORoss"),topImageTexture(name:"WOVer"),topImageTexture(name:"WOVi")],
    texileZigZag: [topImageTexture(name:"TOAr"),topImageTexture(name:"TOAzz"),topImageTexture(name:"TOBl"),topImageTexture(name:"TOGia"),topImageTexture(name:"TOGr"),topImageTexture(name:"TOMarr"),topImageTexture(name:"TOMarrone"),topImageTexture(name:"TONer"),topImageTexture(name:"TORosa"),topImageTexture(name:"TORoss"),topImageTexture(name:"TOVer"),topImageTexture(name:"TOVi")],
    cratereZigZag: [topImageTexture(name:"COAr"),topImageTexture(name:"COAzz"),topImageTexture(name:"COBl"),topImageTexture(name:"COGia"),topImageTexture(name:"COGr"),topImageTexture(name:"COMarr"),topImageTexture(name:"COMarrone"),topImageTexture(name:"CONer"),topImageTexture(name:"CORosa"),topImageTexture(name:"CORoss"),topImageTexture(name:"COVer"),topImageTexture(name:"COVi")],
    marbleZigZag: [topImageTexture(name:"MOAr"),topImageTexture(name:"MOAzz"),topImageTexture(name:"MOBl"),topImageTexture(name:"MOGia"),topImageTexture(name:"MOGr"),topImageTexture(name:"MOMarr"),topImageTexture(name:"MOMarrone"),topImageTexture(name:"MONer"),topImageTexture(name:"MORosa"),topImageTexture(name:"MORoss"),topImageTexture(name:"MOVer"),topImageTexture(name:"MOVi")]
)]

class Collage: UIViewController, UITextFieldDelegate  {
    
    @IBOutlet weak var scarsImage: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var mediumLink: UILabel!
    @IBOutlet weak var top: UIImageView!
    @IBOutlet weak var screen: UIImageView!
    @IBOutlet weak var imgSP: UIImageView!
    @IBOutlet weak var imgSG: UIImageView!
    var imgPrincipale:UIImage?
    var nomeImgPrincipale:String!
    var imgSecondaria:UIImage?
    @IBOutlet weak var procede: UIButton!
    @IBOutlet weak var scrollSk: UIScrollView!
    
    var text: [String] = []
    var shape: [String] = []
    var palette: [String] = []
    var texture: [String] = []


    let dataBase = CKContainer.default().publicCloudDatabase
        
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
        
       viewDidLoad()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        overrideUserInterfaceStyle = .light
        
        
        let attributedString9 = NSMutableAttributedString(string: "Discover more about Kinsugi")
        
        // Add Underline Style Attribute.
        attributedString9.addAttribute(NSAttributedString.Key.underlineStyle, value: 1, range:
            NSRange.init(location: 0, length: attributedString9.length));
        mediumLink.attributedText = attributedString9
        self.mediumLink.isUserInteractionEnabled = true
        let tapgesture = MyTap1(target: self, action: #selector((tappedOnLabel(sender: ))))
        tapgesture.numberOfTapsRequired = 1
        tapgesture.link = "https://medium.com/@skinsugi/the-ancient-art-of-kintsugi-e6ed203ad939"
        self.mediumLink.addGestureRecognizer(tapgesture)
        
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
           text = ENG.textOnCollage
           shape = ENG.Shape
           palette = ENG.Palette
           texture = ENG.Texture
           procede.imageView?.image = UIImage(named: ENG.button[14])
       } else if (lingua == "ita"){
           text = ITA.textOnCollage
           shape = ITA.Shape
           palette = ITA.Palette
           texture = ITA.Texture
           procede.imageView?.image = UIImage(named: ITA.button[14])
       }
        
        if(ChooseShape.shape1 == shape[0]){
            if(ChoosePalette.color == palette[1]){
                let randomInt = Int.random(in: 0..<4)
                imgPrincipale = UIImage(named: structBackImageType[0].warmSquare[randomInt].name)
                nomeImgPrincipale = structBackImageType[0].warmSquare[randomInt].name
            } else if(ChoosePalette.color == palette[0]){
                let randomInt = Int.random(in: 0..<4)
                imgPrincipale = UIImage(named: structBackImageType[0].coolSquare[randomInt].name)
                nomeImgPrincipale = structBackImageType[0].coolSquare[randomInt].name
            } else {
                let randomInt = Int.random(in: 0..<4)
                imgPrincipale = UIImage(named: structBackImageType[0].neutralSquare[randomInt].name)
                nomeImgPrincipale = structBackImageType[0].neutralSquare[randomInt].name
            }
        } else if(ChooseShape.shape1 == shape[1]){
            if(ChoosePalette.color == palette[1]){
                let randomInt = Int.random(in: 0..<4)
                imgPrincipale = UIImage(named: structBackImageType[0].warmCircle[randomInt].name)
                nomeImgPrincipale = structBackImageType[0].warmCircle[randomInt].name
            } else if(ChoosePalette.color == palette[0]){
                let randomInt = Int.random(in: 0..<4)
                imgPrincipale = UIImage(named: structBackImageType[0].coolCircle[randomInt].name)
                nomeImgPrincipale = structBackImageType[0].coolCircle[randomInt].name
            } else {
                let randomInt = Int.random(in: 0..<4)
                imgPrincipale = UIImage(named: structBackImageType[0].neutralCircle[randomInt].name)
                nomeImgPrincipale = structBackImageType[0].neutralCircle[randomInt].name
            }
        } else if(ChooseShape.shape1 == shape[2]){
            if(ChoosePalette.color == palette[1]){
                let randomInt = Int.random(in: 0..<4)
                imgPrincipale = UIImage(named: structBackImageType[0].warmTriangle[randomInt].name)
                nomeImgPrincipale = structBackImageType[0].warmTriangle[randomInt].name
            } else if(ChoosePalette.color == palette[0]){
                let randomInt = Int.random(in: 0..<4)
                imgPrincipale = UIImage(named: structBackImageType[0].coolTriangle[randomInt].name)
                nomeImgPrincipale = structBackImageType[0].coolTriangle[randomInt].name
            } else {
                let randomInt = Int.random(in: 0..<4)
                imgPrincipale = UIImage(named: structBackImageType[0].neutralTriangle[randomInt].name)
                nomeImgPrincipale = structBackImageType[0].neutralTriangle[randomInt].name
            }
        } else if(ChooseShape.shape1 == shape[3]){
            if(ChoosePalette.color == palette[1]){
                let randomInt = Int.random(in: 0..<4)
                imgPrincipale = UIImage(named: structBackImageType[0].warmRect[randomInt].name)
                nomeImgPrincipale = structBackImageType[0].warmRect[randomInt].name
            } else if(ChoosePalette.color == palette[0]){
                let randomInt = Int.random(in: 0..<4)
                imgPrincipale = UIImage(named: structBackImageType[0].coolRect[randomInt].name)
                nomeImgPrincipale = structBackImageType[0].coolRect[randomInt].name
            } else {
                let randomInt = Int.random(in: 0..<4)
                imgPrincipale = UIImage(named: structBackImageType[0].neutralRect[randomInt].name)
                nomeImgPrincipale = structBackImageType[0].neutralRect[randomInt].name
            }
        } else {
            if(ChoosePalette.color == palette[1]){
                let randomInt = Int.random(in: 0..<4)
                imgPrincipale = UIImage(named: structBackImageType[0].warmZigZag[randomInt].name)
                nomeImgPrincipale = structBackImageType[0].warmZigZag[randomInt].name
            } else if(ChoosePalette.color == palette[0]){
                let randomInt = Int.random(in: 0..<4)
                imgPrincipale = UIImage(named: structBackImageType[0].coolZigZag[randomInt].name)
                nomeImgPrincipale = structBackImageType[0].coolZigZag[randomInt].name
            } else {
                let randomInt = Int.random(in: 0..<4)
                nomeImgPrincipale = structBackImageType[0].neutralZigZag[randomInt].name
                imgPrincipale = UIImage(named: structBackImageType[0].neutralZigZag[randomInt].name)
            }
        }

        
        print(nomeImgPrincipale.dropFirst(0))
        if(ChooseShape2.shape2 == shape[0]){
            if(ChooseTexture.texture1 == texture[0]){
                switch nomeImgPrincipale.dropFirst(0) {
                    case "QBl", "CBl","TBl","RBl","OBl": imgSecondaria = UIImage(named: structTopImageType[0].seaSquare[0].name)
                    case "QRosa", "CRosa","TRosa","RRosa","ORosa": imgSecondaria = UIImage(named: structTopImageType[0].seaSquare[1].name)
                    case "QAr", "CAr","TAr","RAr","OAr": imgSecondaria = UIImage(named: structTopImageType[0].seaSquare[2].name)
                    case "QVi", "CVi","TVi","RVi","OVi": imgSecondaria = UIImage(named: structTopImageType[0].seaSquare[3].name)
                    case "QMarrone", "CMarrone","TMarrone","RMarrone","OMarrone": imgSecondaria = UIImage(named: structTopImageType[0].seaSquare[4].name)
                    case "QNer", "CNer","TNer","RNer","ONer": imgSecondaria = UIImage(named: structTopImageType[0].seaSquare[5].name)
                    case "QGr", "CGr","TGr","RGr","OGr": imgSecondaria = UIImage(named: structTopImageType[0].seaSquare[6].name)
                    case "QMarr", "CMarr","TMarr","RMarr","OMarr": imgSecondaria = UIImage(named: structTopImageType[0].seaSquare[7].name)
                    case "QAzz", "CAzz","TAzz","RAzz","OAzz": imgSecondaria = UIImage(named: structTopImageType[0].seaSquare[8].name)
                    case "QVer", "CVer","TVer","RVer","OVer": imgSecondaria = UIImage(named: structTopImageType[0].seaSquare[9].name)
                    case "QRoss", "CRoss","TRoss","RRoss","ORoss": imgSecondaria = UIImage(named: structTopImageType[0].seaSquare[10].name)
                    default: imgSecondaria = UIImage(named: structTopImageType[0].seaSquare[11].name)
                }
            } else if(ChooseTexture.texture1 == texture[4]){
                switch nomeImgPrincipale {
                    case "QBl", "CBl","TBl","RBl","OBl": imgSecondaria = UIImage(named: structTopImageType[0].woodSquare[0].name)
                    case "QRosa", "CRosa","TRosa","RRosa","ORosa": imgSecondaria = UIImage(named: structTopImageType[0].woodSquare[1].name)
                    case "QAr", "CAr","TAr","RAr","OAr": imgSecondaria = UIImage(named: structTopImageType[0].woodSquare[2].name)
                    case "QVi", "CVi","TVi","RVi","OVi": imgSecondaria = UIImage(named: structTopImageType[0].woodSquare[3].name)
                    case "QMarrone", "CMarrone","TMarrone","RMarrone","OMarrone": imgSecondaria = UIImage(named: structTopImageType[0].woodSquare[4].name)
                    case "QNer", "CNer","TNer","RNer","ONer": imgSecondaria = UIImage(named: structTopImageType[0].woodSquare[5].name)
                    case "QGr", "CGr","TGr","RGr","OGr": imgSecondaria = UIImage(named: structTopImageType[0].woodSquare[6].name)
                    case "QMarr", "CMarr","TMarr","RMarr","OMarr": imgSecondaria = UIImage(named: structTopImageType[0].woodSquare[7].name)
                    case "QAzz", "CAzz","TAzz","RAzz","OAzz": imgSecondaria = UIImage(named: structTopImageType[0].woodSquare[8].name)
                    case "QVer", "CVer","TVer","RVer","OVer": imgSecondaria = UIImage(named: structTopImageType[0].woodSquare[9].name)
                    case "QRoss", "CRoss","TRoss","RRoss","ORoss": imgSecondaria = UIImage(named: structTopImageType[0].woodSquare[10].name)
                    default: imgSecondaria = UIImage(named: structTopImageType[0].woodSquare[11].name)
                }
            } else if(ChooseTexture.texture1 == texture[2]){
                switch nomeImgPrincipale {
                    case "QBl", "CBl","TBl","RBl","OBl": imgSecondaria = UIImage(named: structTopImageType[0].texileSquare[0].name)
                    case "QRosa", "CRosa","TRosa","RRosa","ORosa": imgSecondaria = UIImage(named: structTopImageType[0].texileSquare[1].name)
                    case "QAr", "CAr","TAr","RAr","OAr": imgSecondaria = UIImage(named: structTopImageType[0].texileSquare[2].name)
                    case "QVi", "CVi","TVi","RVi","OVi": imgSecondaria = UIImage(named: structTopImageType[0].texileSquare[3].name)
                    case "QMarrone", "CMarrone","TMarrone","RMarrone","OMarrone": imgSecondaria = UIImage(named: structTopImageType[0].texileSquare[4].name)
                    case "QNer", "CNer","TNer","RNer","ONer": imgSecondaria = UIImage(named: structTopImageType[0].texileSquare[5].name)
                    case "QGr", "CGr","TGr","RGr","OGr": imgSecondaria = UIImage(named: structTopImageType[0].texileSquare[6].name)
                    case "QMarr", "CMarr","TMarr","RMarr","OMarr": imgSecondaria = UIImage(named: structTopImageType[0].texileSquare[7].name)
                    case "QAzz", "CAzz","TAzz","RAzz","OAzz": imgSecondaria = UIImage(named: structTopImageType[0].texileSquare[8].name)
                    case "QVer", "CVer","TVer","RVer","OVer": imgSecondaria = UIImage(named: structTopImageType[0].texileSquare[9].name)
                    case "QRoss", "CRoss","TRoss","RRoss","ORoss": imgSecondaria = UIImage(named: structTopImageType[0].texileSquare[10].name)
                    default: imgSecondaria = UIImage(named: structTopImageType[0].texileSquare[11].name)
                }
            } else if(ChooseTexture.texture1 == texture[1]){
                switch nomeImgPrincipale {
                    case "QBl", "CBl","TBl","RBl","OBl": imgSecondaria = UIImage(named: structTopImageType[0].cratereSquare[0].name)
                    case "QRosa", "CRosa","TRosa","RRosa","ORosa": imgSecondaria = UIImage(named: structTopImageType[0].cratereSquare[1].name)
                    case "QAr", "CAr","TAr","RAr","OAr": imgSecondaria = UIImage(named: structTopImageType[0].cratereSquare[2].name)
                    case "QVi", "CVi","TVi","RVi","OVi": imgSecondaria = UIImage(named: structTopImageType[0].cratereSquare[3].name)
                    case "QMarrone", "CMarrone","TMarrone","RMarrone","OMarrone": imgSecondaria = UIImage(named: structTopImageType[0].cratereSquare[4].name)
                    case "QNer", "CNer","TNer","RNer","ONer": imgSecondaria = UIImage(named: structTopImageType[0].cratereSquare[5].name)
                    case "QGr", "CGr","TGr","RGr","OGr": imgSecondaria = UIImage(named: structTopImageType[0].cratereSquare[6].name)
                    case "QMarr", "CMarr","TMarr","RMarr","OMarr": imgSecondaria = UIImage(named: structTopImageType[0].cratereSquare[7].name)
                    case "QAzz", "CAzz","TAzz","RAzz","OAzz": imgSecondaria = UIImage(named: structTopImageType[0].cratereSquare[8].name)
                    case "QVer", "CVer","TVer","RVer","OVer": imgSecondaria = UIImage(named: structTopImageType[0].cratereSquare[9].name)
                    case "QRoss", "CRoss","TRoss","RRoss","ORoss": imgSecondaria = UIImage(named: structTopImageType[0].cratereSquare[10].name)
                    default: imgSecondaria = UIImage(named: structTopImageType[0].cratereSquare[11].name)
                }
            } else if(ChooseTexture.texture1 == texture[3]){
                switch nomeImgPrincipale {
                    case "QBl", "CBl","TBl","RBl","OBl": imgSecondaria = UIImage(named: structTopImageType[0].marbleSquare[0].name)
                    case "QRosa", "CRosa","TRosa","RRosa","ORosa": imgSecondaria = UIImage(named: structTopImageType[0].marbleSquare[1].name)
                    case "QAr", "CAr","TAr","RAr","OAr": imgSecondaria = UIImage(named: structTopImageType[0].marbleSquare[2].name)
                    case "QVi", "CVi","TVi","RVi","OVi": imgSecondaria = UIImage(named: structTopImageType[0].marbleSquare[3].name)
                    case "QMarrone", "CMarrone","TMarrone","RMarrone","OMarrone": imgSecondaria = UIImage(named: structTopImageType[0].marbleSquare[4].name)
                    case "QNer", "CNer","TNer","RNer","ONer": imgSecondaria = UIImage(named: structTopImageType[0].marbleSquare[5].name)
                    case "QGr", "CGr","TGr","RGr","OGr": imgSecondaria = UIImage(named: structTopImageType[0].marbleSquare[6].name)
                    case "QMarr", "CMarr","TMarr","RMarr","OMarr": imgSecondaria = UIImage(named: structTopImageType[0].marbleSquare[7].name)
                    case "QAzz", "CAzz","TAzz","RAzz","OAzz": imgSecondaria = UIImage(named: structTopImageType[0].marbleSquare[8].name)
                    case "QVer", "CVer","TVer","RVer","OVer": imgSecondaria = UIImage(named: structTopImageType[0].marbleSquare[9].name)
                    case "QRoss", "CRoss","TRoss","RRoss","ORoss": imgSecondaria = UIImage(named: structTopImageType[0].marbleSquare[10].name)
                    default: imgSecondaria = UIImage(named: structTopImageType[0].marbleSquare[11].name)
                }
            }
        } else if(ChooseShape2.shape2 == shape[3]){
            if(ChooseTexture.texture1 == texture[0]){
                switch nomeImgPrincipale {
                    case "QBl", "CBl","TBl","RBl","OBl": imgSecondaria = UIImage(named: structTopImageType[0].seaCircle[0].name)
                    case "QRosa", "CRosa","TRosa","RRosa","ORosa": imgSecondaria = UIImage(named: structTopImageType[0].seaCircle[1].name)
                    case "QAr", "CAr","TAr","RAr","OAr": imgSecondaria = UIImage(named: structTopImageType[0].seaCircle[2].name)
                    case "QVi", "CVi","TVi","RVi","OVi": imgSecondaria = UIImage(named: structTopImageType[0].seaCircle[3].name)
                    case "QMarrone", "CMarrone","TMarrone","RMarrone","OMarrone": imgSecondaria = UIImage(named: structTopImageType[0].seaCircle[4].name)
                    case "QNer", "CNer","TNer","RNer","ONer": imgSecondaria = UIImage(named: structTopImageType[0].seaCircle[5].name)
                    case "QGr", "CGr","TGr","RGr","OGr": imgSecondaria = UIImage(named: structTopImageType[0].seaCircle[6].name)
                    case "QMarr", "CMarr","TMarr","RMarr","OMarr": imgSecondaria = UIImage(named: structTopImageType[0].seaCircle[7].name)
                    case "QAzz", "CAzz","TAzz","RAzz","OAzz": imgSecondaria = UIImage(named: structTopImageType[0].seaCircle[8].name)
                    case "QVer", "CVer","TVer","RVer","OVer": imgSecondaria = UIImage(named: structTopImageType[0].seaCircle[9].name)
                    case "QRoss", "CRoss","TRoss","RRoss","ORoss": imgSecondaria = UIImage(named: structTopImageType[0].seaCircle[10].name)
                    default: imgSecondaria = UIImage(named: structTopImageType[0].seaCircle[11].name)
                }
            } else if(ChooseTexture.texture1 == texture[4]){
                switch nomeImgPrincipale {
                    case "QBl", "CBl","TBl","RBl","OBl": imgSecondaria = UIImage(named: structTopImageType[0].woodCircle[0].name)
                    case "QRosa", "CRosa","TRosa","RRosa","ORosa": imgSecondaria = UIImage(named: structTopImageType[0].woodCircle[1].name)
                    case "QAr", "CAr","TAr","RAr","OAr": imgSecondaria = UIImage(named: structTopImageType[0].woodCircle[2].name)
                    case "QVi", "CVi","TVi","RVi","OVi": imgSecondaria = UIImage(named: structTopImageType[0].woodCircle[3].name)
                    case "QMarrone", "CMarrone","TMarrone","RMarrone","OMarrone": imgSecondaria = UIImage(named: structTopImageType[0].woodCircle[4].name)
                    case "QNer", "CNer","TNer","RNer","ONer": imgSecondaria = UIImage(named: structTopImageType[0].woodCircle[5].name)
                    case "QGr", "CGr","TGr","RGr","OGr": imgSecondaria = UIImage(named: structTopImageType[0].woodCircle[6].name)
                    case "QMarr", "CMarr","TMarr","RMarr","OMarr": imgSecondaria = UIImage(named: structTopImageType[0].woodCircle[7].name)
                    case "QAzz", "CAzz","TAzz","RAzz","OAzz": imgSecondaria = UIImage(named: structTopImageType[0].woodCircle[8].name)
                    case "QVer", "CVer","TVer","RVer","OVer": imgSecondaria = UIImage(named: structTopImageType[0].woodCircle[9].name)
                    case "QRoss", "CRoss","TRoss","RRoss","ORoss": imgSecondaria = UIImage(named: structTopImageType[0].woodCircle[10].name)
                    default: imgSecondaria = UIImage(named: structTopImageType[0].woodCircle[11].name)
                }
            } else if(ChooseTexture.texture1 == texture[2]){
                switch nomeImgPrincipale {
                    case "QBl", "CBl","TBl","RBl","OBl": imgSecondaria = UIImage(named: structTopImageType[0].texileCircle[0].name)
                    case "QRosa", "CRosa","TRosa","RRosa","ORosa": imgSecondaria = UIImage(named: structTopImageType[0].texileCircle[1].name)
                    case "QAr", "CAr","TAr","RAr","OAr": imgSecondaria = UIImage(named: structTopImageType[0].texileCircle[2].name)
                    case "QVi", "CVi","TVi","RVi","OVi": imgSecondaria = UIImage(named: structTopImageType[0].texileCircle[3].name)
                    case "QMarrone", "CMarrone","TMarrone","RMarrone","OMarrone": imgSecondaria = UIImage(named: structTopImageType[0].texileCircle[4].name)
                    case "QNer", "CNer","TNer","RNer","ONer": imgSecondaria = UIImage(named: structTopImageType[0].texileCircle[5].name)
                    case "QGr", "CGr","TGr","RGr","OGr": imgSecondaria = UIImage(named: structTopImageType[0].texileCircle[6].name)
                    case "QMarr", "CMarr","TMarr","RMarr","OMarr": imgSecondaria = UIImage(named: structTopImageType[0].texileCircle[7].name)
                    case "QAzz", "CAzz","TAzz","RAzz","OAzz": imgSecondaria = UIImage(named: structTopImageType[0].texileCircle[8].name)
                    case "QVer", "CVer","TVer","RVer","OVer": imgSecondaria = UIImage(named: structTopImageType[0].texileCircle[9].name)
                    case "QRoss", "CRoss","TRoss","RRoss","ORoss": imgSecondaria = UIImage(named: structTopImageType[0].texileCircle[10].name)
                    default: imgSecondaria = UIImage(named: structTopImageType[0].texileCircle[11].name)
                }
            } else if(ChooseTexture.texture1 == texture[1]){
                switch nomeImgPrincipale {
                    case "QBl", "CBl","TBl","RBl","OBl": imgSecondaria = UIImage(named: structTopImageType[0].cratereCircle[0].name)
                    case "QRosa", "CRosa","TRosa","RRosa","ORosa": imgSecondaria = UIImage(named: structTopImageType[0].cratereCircle[1].name)
                    case "QAr", "CAr","TAr","RAr","OAr": imgSecondaria = UIImage(named: structTopImageType[0].cratereCircle[2].name)
                    case "QVi", "CVi","TVi","RVi","OVi": imgSecondaria = UIImage(named: structTopImageType[0].cratereCircle[3].name)
                    case "QMarrone", "CMarrone","TMarrone","RMarrone","OMarrone": imgSecondaria = UIImage(named: structTopImageType[0].cratereCircle[4].name)
                    case "QNer", "CNer","TNer","RNer","ONer": imgSecondaria = UIImage(named: structTopImageType[0].cratereCircle[5].name)
                    case "QGr", "CGr","TGr","RGr","OGr": imgSecondaria = UIImage(named: structTopImageType[0].cratereCircle[6].name)
                    case "QMarr", "CMarr","TMarr","RMarr","OMarr": imgSecondaria = UIImage(named: structTopImageType[0].cratereCircle[7].name)
                    case "QAzz", "CAzz","TAzz","RAzz","OAzz": imgSecondaria = UIImage(named: structTopImageType[0].cratereCircle[8].name)
                    case "QVer", "CVer","TVer","RVer","OVer": imgSecondaria = UIImage(named: structTopImageType[0].cratereCircle[9].name)
                    case "QRoss", "CRoss","TRoss","RRoss","ORoss": imgSecondaria = UIImage(named: structTopImageType[0].cratereCircle[10].name)
                    default: imgSecondaria = UIImage(named: structTopImageType[0].cratereCircle[11].name)
                }
            } else if(ChooseTexture.texture1 == texture[3]){
                switch nomeImgPrincipale {
                    case "QBl", "CBl","TBl","RBl","OBl": imgSecondaria = UIImage(named: structTopImageType[0].marbleCircle[0].name)
                    case "QRosa", "CRosa","TRosa","RRosa","ORosa": imgSecondaria = UIImage(named: structTopImageType[0].marbleCircle[1].name)
                    case "QAr", "CAr","TAr","RAr","OAr": imgSecondaria = UIImage(named: structTopImageType[0].marbleCircle[2].name)
                   case "QVi", "CVi","TVi","RVi","OVi": imgSecondaria = UIImage(named: structTopImageType[0].marbleCircle[3].name)
                    case "QMarrone", "CMarrone","TMarrone","RMarrone","OMarrone": imgSecondaria = UIImage(named: structTopImageType[0].marbleCircle[4].name)
                    case "QNer", "CNer","TNer","RNer","ONer": imgSecondaria = UIImage(named: structTopImageType[0].marbleCircle[5].name)
                    case "QGr", "CGr","TGr","RGr","OGr": imgSecondaria = UIImage(named: structTopImageType[0].marbleCircle[6].name)
                    case "QMarr", "CMarr","TMarr","RMarr","OMarr": imgSecondaria = UIImage(named: structTopImageType[0].marbleCircle[7].name)
                    case "QAzz", "CAzz","TAzz","RAzz","OAzz": imgSecondaria = UIImage(named: structTopImageType[0].marbleCircle[8].name)
                    case "QVer", "CVer","TVer","RVer","OVer": imgSecondaria = UIImage(named: structTopImageType[0].marbleCircle[9].name)
                    case "QRoss", "CRoss","TRoss","RRoss","ORoss": imgSecondaria = UIImage(named: structTopImageType[0].marbleCircle[10].name)
                    default: imgSecondaria = UIImage(named: structTopImageType[0].marbleCircle[11].name)
                }
            }
        } else if(ChooseShape2.shape2 == shape[2]){
            if(ChooseTexture.texture1 == texture[0]){
                switch nomeImgPrincipale {
                    case "QBl", "CBl","TBl","RBl","OBl": imgSecondaria = UIImage(named: structTopImageType[0].seaTriangle[0].name)
                    case "QRosa", "CRosa","TRosa","RRosa","ORosa": imgSecondaria = UIImage(named: structTopImageType[0].seaTriangle[1].name)
                    case "QAr", "CAr","TAr","RAr","OAr": imgSecondaria = UIImage(named: structTopImageType[0].seaTriangle[2].name)
                    case "QVi", "CVi","TVi","RVi","OVi": imgSecondaria = UIImage(named: structTopImageType[0].seaTriangle[3].name)
                    case "QMarrone", "CMarrone","TMarrone","RMarrone","OMarrone": imgSecondaria = UIImage(named: structTopImageType[0].seaTriangle[4].name)
                    case "QNer", "CNer","TNer","RNer","ONer": imgSecondaria = UIImage(named: structTopImageType[0].seaTriangle[5].name)
                    case "QGr", "CGr","TGr","RGr","OGr": imgSecondaria = UIImage(named: structTopImageType[0].seaTriangle[6].name)
                    case "QMarr", "CMarr","TMarr","RMarr","OMarr": imgSecondaria = UIImage(named: structTopImageType[0].seaTriangle[7].name)
                    case "QAzz", "CAzz","TAzz","RAzz","OAzz": imgSecondaria = UIImage(named: structTopImageType[0].seaTriangle[8].name)
                    case "QVer", "CVer","TVer","RVer","OVer": imgSecondaria = UIImage(named: structTopImageType[0].seaTriangle[9].name)
                    case "QRoss", "CRoss","TRoss","RRoss","ORoss": imgSecondaria = UIImage(named: structTopImageType[0].seaTriangle[10].name)
                    default: imgSecondaria = UIImage(named: structTopImageType[0].seaTriangle[11].name)
                }
            } else if(ChooseTexture.texture1 == texture[4]){
                switch nomeImgPrincipale {
                    case "QBl", "CBl","TBl","RBl","OBl": imgSecondaria = UIImage(named: structTopImageType[0].woodTriangle[0].name)
                    case "QRosa", "CRosa","TRosa","RRosa","ORosa": imgSecondaria = UIImage(named: structTopImageType[0].woodTriangle[1].name)
                    case "QAr", "CAr","TAr","RAr","OAr": imgSecondaria = UIImage(named: structTopImageType[0].woodTriangle[2].name)
                    case "QVi", "CVi","TVi","RVi","OVi": imgSecondaria = UIImage(named: structTopImageType[0].woodTriangle[3].name)
                    case "QMarrone", "CMarrone","TMarrone","RMarrone","OMarrone": imgSecondaria = UIImage(named: structTopImageType[0].woodTriangle[4].name)
                    case "QNer", "CNer","TNer","RNer","ONer": imgSecondaria = UIImage(named: structTopImageType[0].woodTriangle[5].name)
                    case "QGr", "CGr","TGr","RGr","OGr": imgSecondaria = UIImage(named: structTopImageType[0].woodTriangle[6].name)
                    case "QMarr", "CMarr","TMarr","RMarr","OMarr": imgSecondaria = UIImage(named: structTopImageType[0].woodTriangle[7].name)
                    case "QAzz", "CAzz","TAzz","RAzz","OAzz": imgSecondaria = UIImage(named: structTopImageType[0].woodTriangle[8].name)
                    case "QVer", "CVer","TVer","RVer","OVer": imgSecondaria = UIImage(named: structTopImageType[0].woodTriangle[9].name)
                    case "QRoss", "CRoss","TRoss","RRoss","ORoss": imgSecondaria = UIImage(named: structTopImageType[0].woodTriangle[10].name)
                    default: imgSecondaria = UIImage(named: structTopImageType[0].woodTriangle[11].name)
                }
            } else if(ChooseTexture.texture1 == texture[2]){
                switch nomeImgPrincipale {
                    case "QBl", "CBl","TBl","RBl","OBl": imgSecondaria = UIImage(named: structTopImageType[0].texileTriangle[0].name)
                    case "QRosa", "CRosa","TRosa","RRosa","ORosa": imgSecondaria = UIImage(named: structTopImageType[0].texileTriangle[1].name)
                    case "QAr", "CAr","TAr","RAr","OAr": imgSecondaria = UIImage(named: structTopImageType[0].texileTriangle[2].name)
                    case "QVi", "CVi","TVi","RVi","OVi": imgSecondaria = UIImage(named: structTopImageType[0].texileTriangle[3].name)
                    case "QMarrone", "CMarrone","TMarrone","RMarrone","OMarrone": imgSecondaria = UIImage(named: structTopImageType[0].texileTriangle[4].name)
                    case "QNer", "CNer","TNer","RNer","ONer": imgSecondaria = UIImage(named: structTopImageType[0].texileTriangle[5].name)
                   case "QGr", "CGr","TGr","RGr","OGr"  : imgSecondaria = UIImage(named: structTopImageType[0].texileTriangle[6].name)
                    case "QMarr", "CMarr","TMarr","RMarr","OMarr": imgSecondaria = UIImage(named: structTopImageType[0].texileTriangle[7].name)
                    case "QAzz", "CAzz","TAzz","RAzz","OAzz": imgSecondaria = UIImage(named: structTopImageType[0].texileTriangle[8].name)
                    case "QVer", "CVer","TVer","RVer","OVer": imgSecondaria = UIImage(named: structTopImageType[0].texileTriangle[9].name)
                    case "QRoss", "CRoss","TRoss","RRoss","ORoss": imgSecondaria = UIImage(named: structTopImageType[0].texileTriangle[10].name)
                    default: imgSecondaria = UIImage(named: structTopImageType[0].texileTriangle[11].name)
                }
            } else if(ChooseTexture.texture1 == texture[1]){
                switch nomeImgPrincipale {
                    case "QBl", "CBl","TBl","RBl","OBl": imgSecondaria = UIImage(named: structTopImageType[0].cratereTriangle[0].name)
                    case "QRosa", "CRosa","TRosa","RRosa","ORosa": imgSecondaria = UIImage(named: structTopImageType[0].cratereTriangle[1].name)
                    case "QAr", "CAr","TAr","RAr","OAr": imgSecondaria = UIImage(named: structTopImageType[0].cratereTriangle[2].name)
                    case "QVi", "CVi","TVi","RVi","OVi": imgSecondaria = UIImage(named: structTopImageType[0].cratereTriangle[3].name)
                    case "QMarrone", "CMarrone","TMarrone","RMarrone","OMarrone": imgSecondaria = UIImage(named: structTopImageType[0].cratereTriangle[4].name)
                    case "QNer", "CNer","TNer","RNer","ONer": imgSecondaria = UIImage(named: structTopImageType[0].cratereTriangle[5].name)
                    case "QGr", "CGr","TGr","RGr","OGr": imgSecondaria = UIImage(named: structTopImageType[0].cratereTriangle[6].name)
                    case "QMarr", "CMarr","TMarr","RMarr","OMarr": imgSecondaria = UIImage(named: structTopImageType[0].cratereTriangle[7].name)
                    case "QAzz", "CAzz","TAzz","RAzz","OAzz": imgSecondaria = UIImage(named: structTopImageType[0].cratereTriangle[8].name)
                    case "QVer", "CVer","TVer","RVer","OVer": imgSecondaria = UIImage(named: structTopImageType[0].cratereTriangle[9].name)
                    case "QRoss", "CRoss","TRoss","RRoss","ORoss": imgSecondaria = UIImage(named: structTopImageType[0].cratereTriangle[10].name)
                    default: imgSecondaria = UIImage(named: structTopImageType[0].cratereTriangle[11].name)
                }
            } else if(ChooseTexture.texture1 == texture[3]){
                switch nomeImgPrincipale {
                    case "QBl", "CBl","TBl","RBl","OBl": imgSecondaria = UIImage(named: structTopImageType[0].marbleTriangle[0].name)
                    case "QRosa", "CRosa","TRosa","RRosa","ORosa": imgSecondaria = UIImage(named: structTopImageType[0].marbleTriangle[1].name)
                    case "QAr", "CAr","TAr","RAr","OAr": imgSecondaria = UIImage(named: structTopImageType[0].marbleTriangle[2].name)
                    case "QVi", "CVi","TVi","RVi","OVi": imgSecondaria = UIImage(named: structTopImageType[0].marbleTriangle[3].name)
                    case "QMarrone", "CMarrone","TMarrone","RMarrone","OMarrone": imgSecondaria = UIImage(named: structTopImageType[0].marbleTriangle[4].name)
                    case "QNer", "CNer","TNer","RNer","ONer": imgSecondaria = UIImage(named: structTopImageType[0].marbleTriangle[5].name)
                    case "QGr", "CGr","TGr","RGr","OGr": imgSecondaria = UIImage(named: structTopImageType[0].marbleTriangle[6].name)
                    case "QMarr", "CMarr","TMarr","RMarr","OMarr": imgSecondaria = UIImage(named: structTopImageType[0].marbleTriangle[7].name)
                    case "QAzz", "CAzz","TAzz","RAzz","OAzz": imgSecondaria = UIImage(named: structTopImageType[0].marbleTriangle[8].name)
                    case "QVer", "CVer","TVer","RVer","OVer": imgSecondaria = UIImage(named: structTopImageType[0].marbleTriangle[9].name)
                    case "QRoss", "CRoss","TRoss","RRoss","ORoss": imgSecondaria = UIImage(named: structTopImageType[0].marbleTriangle[10].name)
                    default: imgSecondaria = UIImage(named: structTopImageType[0].marbleTriangle[11].name)
                }
            }
        } else if(ChooseShape2.shape2 == shape[1]){
            if(ChooseTexture.texture1 == texture[0]){
                switch nomeImgPrincipale {
                    case "QBl", "CBl","TBl","RBl","OBl": imgSecondaria = UIImage(named: structTopImageType[0].seaRect[0].name)
                    case "QRosa", "CRosa","TRosa","RRosa","ORosa": imgSecondaria = UIImage(named: structTopImageType[0].seaRect[1].name)
                    case "QAr", "CAr","TAr","RAr","OAr": imgSecondaria = UIImage(named: structTopImageType[0].seaRect[2].name)
                    case "QVi", "CVi","TVi","RVi","OVi": imgSecondaria = UIImage(named: structTopImageType[0].seaRect[3].name)
                    case "QMarrone", "CMarrone","TMarrone","RMarrone","OMarrone": imgSecondaria = UIImage(named: structTopImageType[0].seaRect[4].name)
                    case "QNer", "CNer","TNer","RNer","ONer": imgSecondaria = UIImage(named: structTopImageType[0].seaRect[5].name)
                    case "QGr", "CGr","TGr","RGr","OGr": imgSecondaria = UIImage(named: structTopImageType[0].seaRect[6].name)
                    case "QMarr", "CMarr","TMarr","RMarr","OMarr": imgSecondaria = UIImage(named: structTopImageType[0].seaRect[7].name)
                    case "QAzz", "CAzz","TAzz","RAzz","OAzz": imgSecondaria = UIImage(named: structTopImageType[0].seaRect[8].name)
                    case "QVer", "CVer","TVer","RVer","OVer": imgSecondaria = UIImage(named: structTopImageType[0].seaRect[9].name)
                    case "QRoss", "CRoss","TRoss","RRoss","ORoss": imgSecondaria = UIImage(named: structTopImageType[0].seaRect[10].name)
                    default: imgSecondaria = UIImage(named: structTopImageType[0].seaRect[11].name)
                }
            } else if(ChooseTexture.texture1 == texture[4]){
                switch nomeImgPrincipale {
                    case "QBl", "CBl","TBl","RBl","OBl": imgSecondaria = UIImage(named: structTopImageType[0].woodRect[0].name)
                    case "QRosa", "CRosa","TRosa","RRosa","ORosa": imgSecondaria = UIImage(named: structTopImageType[0].woodRect[1].name)
                    case "QAr", "CAr","TAr","RAr","OAr": imgSecondaria = UIImage(named: structTopImageType[0].woodRect[2].name)
                    case "QVi", "CVi","TVi","RVi","OVi": imgSecondaria = UIImage(named: structTopImageType[0].woodRect[3].name)
                    case "QMarrone", "CMarrone","TMarrone","RMarrone","OMarrone": imgSecondaria = UIImage(named: structTopImageType[0].woodRect[4].name)
                    case "QNer", "CNer","TNer","RNer","ONer": imgSecondaria = UIImage(named: structTopImageType[0].woodRect[5].name)
                    case "QGr", "CGr","TGr","RGr","OGr": imgSecondaria = UIImage(named: structTopImageType[0].woodRect[6].name)
                    case "QMarr", "CMarr","TMarr","RMarr","OMarr": imgSecondaria = UIImage(named: structTopImageType[0].woodRect[7].name)
                    case "QAzz", "CAzz","TAzz","RAzz","OAzz": imgSecondaria = UIImage(named: structTopImageType[0].woodRect[8].name)
                    case "QVer", "CVer","TVer","RVer","OVer": imgSecondaria = UIImage(named: structTopImageType[0].woodRect[9].name)
                    case "QRoss", "CRoss","TRoss","RRoss","ORoss": imgSecondaria = UIImage(named: structTopImageType[0].woodRect[10].name)
                    default: imgSecondaria = UIImage(named: structTopImageType[0].woodRect[11].name)
                }
            } else if(ChooseTexture.texture1 == texture[2]){
                switch nomeImgPrincipale {
                    case "QBl", "CBl","TBl","RBl","OBl": imgSecondaria = UIImage(named: structTopImageType[0].texileRect[0].name)
                   case "QRosa", "CRosa","TRosa","RRosa","ORosa": imgSecondaria = UIImage(named: structTopImageType[0].texileRect[1].name)
                    case "QAr", "CAr","TAr","RAr","OAr": imgSecondaria = UIImage(named: structTopImageType[0].texileRect[2].name)
                    case "QVi", "CVi","TVi","RVi","OVi": imgSecondaria = UIImage(named: structTopImageType[0].texileRect[3].name)
                    case "QMarrone", "CMarrone","TMarrone","RMarrone","OMarrone": imgSecondaria = UIImage(named: structTopImageType[0].texileRect[4].name)
                    case "QNer", "CNer","TNer","RNer","ONer": imgSecondaria = UIImage(named: structTopImageType[0].texileRect[5].name)
                    case "QGr", "CGr","TGr","RGr","OGr": imgSecondaria = UIImage(named: structTopImageType[0].texileRect[6].name)
                    case "QMarr", "CMarr","TMarr","RMarr","OMarr": imgSecondaria = UIImage(named: structTopImageType[0].texileRect[7].name)
                    case "QAzz", "CAzz","TAzz","RAzz","OAzz": imgSecondaria = UIImage(named: structTopImageType[0].texileRect[8].name)
                    case "QVer", "CVer","TVer","RVer","OVer": imgSecondaria = UIImage(named: structTopImageType[0].texileRect[9].name)
                    case "QRoss", "CRoss","TRoss","RRoss","ORoss": imgSecondaria = UIImage(named: structTopImageType[0].texileRect[10].name)
                    default: imgSecondaria = UIImage(named: structTopImageType[0].texileRect[11].name)
                }
            } else if(ChooseTexture.texture1 == texture[1]){
                switch nomeImgPrincipale {
                    case "QBl", "CBl","TBl","RBl","OBl": imgSecondaria = UIImage(named: structTopImageType[0].cratereRect[0].name)
                    case "QRosa", "CRosa","TRosa","RRosa","ORosa": imgSecondaria = UIImage(named: structTopImageType[0].cratereRect[1].name)
                    case "QAr", "CAr","TAr","RAr","OAr": imgSecondaria = UIImage(named: structTopImageType[0].cratereRect[2].name)
                    case "QVi", "CVi","TVi","RVi","OVi": imgSecondaria = UIImage(named: structTopImageType[0].cratereRect[3].name)
                    case "QMarrone", "CMarrone","TMarrone","RMarrone","OMarrone": imgSecondaria = UIImage(named: structTopImageType[0].cratereRect[4].name)
                    case "QNer", "CNer","TNer","RNer","ONer": imgSecondaria = UIImage(named: structTopImageType[0].cratereRect[5].name)
                    case "QGr", "CGr","TGr","RGr","OGr": imgSecondaria = UIImage(named: structTopImageType[0].cratereRect[6].name)
                    case "QMarr", "CMarr","TMarr","RMarr","OMarr": imgSecondaria = UIImage(named: structTopImageType[0].cratereRect[7].name)
                    case "QAzz", "CAzz","TAzz","RAzz","OAzz": imgSecondaria = UIImage(named: structTopImageType[0].cratereRect[8].name)
                    case "QVer", "CVer","TVer","RVer","OVer": imgSecondaria = UIImage(named: structTopImageType[0].cratereRect[9].name)
                    case "QRoss", "CRoss","TRoss","RRoss","ORoss": imgSecondaria = UIImage(named: structTopImageType[0].cratereRect[10].name)
                    default: imgSecondaria = UIImage(named: structTopImageType[0].cratereRect[11].name)
                }
            } else if(ChooseTexture.texture1 == texture[3]){
                switch nomeImgPrincipale {
                    case "QBl", "CBl","TBl","RBl","OBl": imgSecondaria = UIImage(named: structTopImageType[0].marbleRect[0].name)
                    case "QRosa", "CRosa","TRosa","RRosa","ORosa": imgSecondaria = UIImage(named: structTopImageType[0].marbleRect[1].name)
                    case "QAr", "CAr","TAr","RAr","OAr": imgSecondaria = UIImage(named: structTopImageType[0].marbleRect[2].name)
                    case "QVi", "CVi","TVi","RVi","OVi": imgSecondaria = UIImage(named: structTopImageType[0].marbleRect[3].name)
                    case "QMarrone", "CMarrone","TMarrone","RMarrone","OMarrone": imgSecondaria = UIImage(named: structTopImageType[0].marbleRect[4].name)
                    case "QNer", "CNer","TNer","RNer","ONer": imgSecondaria = UIImage(named: structTopImageType[0].marbleRect[5].name)
                    case "QGr", "CGr","TGr","RGr","OGr": imgSecondaria = UIImage(named: structTopImageType[0].marbleRect[6].name)
                    case "QMarr", "CMarr","TMarr","RMarr","OMarr": imgSecondaria = UIImage(named: structTopImageType[0].marbleRect[7].name)
                    case "QAzz", "CAzz","TAzz","RAzz","OAzz": imgSecondaria = UIImage(named: structTopImageType[0].marbleRect[8].name)
                    case "QVer", "CVer","TVer","RVer","OVer": imgSecondaria = UIImage(named: structTopImageType[0].marbleRect[9].name)
                    case "QRoss", "CRoss","TRoss","RRoss","ORoss": imgSecondaria = UIImage(named: structTopImageType[0].marbleRect[10].name)
                    default: imgSecondaria = UIImage(named: structTopImageType[0].marbleRect[11].name)
                }
            }
        }  else {
            if(ChooseTexture.texture1 == texture[0]){
                switch nomeImgPrincipale {
                    case "QBl", "CBl","TBl","RBl","OBl": imgSecondaria = UIImage(named: structTopImageType[0].seaZigZag[0].name)
                    case "QRosa", "CRosa","TRosa","RRosa","ORosa": imgSecondaria = UIImage(named: structTopImageType[0].seaZigZag[1].name)
                    case "QAr", "CAr","TAr","RAr","OAr": imgSecondaria = UIImage(named: structTopImageType[0].seaZigZag[2].name)
                    case "QVi", "CVi","TVi","RVi","OVi": imgSecondaria = UIImage(named: structTopImageType[0].seaZigZag[3].name)
                    case "QMarrone", "CMarrone","TMarrone","RMarrone","OMarrone": imgSecondaria = UIImage(named: structTopImageType[0].seaZigZag[4].name)
                    case "QNer", "CNer","TNer","RNer","ONer": imgSecondaria = UIImage(named: structTopImageType[0].seaZigZag[5].name)
                    case "QGr", "CGr","TGr","RGr","OGr": imgSecondaria = UIImage(named: structTopImageType[0].seaZigZag[6].name)
                    case "QMarr", "CMarr","TMarr","RMarr","OMarr": imgSecondaria = UIImage(named: structTopImageType[0].seaZigZag[7].name)
                    case "QAzz", "CAzz","TAzz","RAzz","OAzz": imgSecondaria = UIImage(named: structTopImageType[0].seaZigZag[8].name)
                    case "QVer", "CVer","TVer","RVer","OVer": imgSecondaria = UIImage(named: structTopImageType[0].seaZigZag[9].name)
                    case "QRoss", "CRoss","TRoss","RRoss","ORoss": imgSecondaria = UIImage(named: structTopImageType[0].seaZigZag[10].name)
                    default: imgSecondaria = UIImage(named: structTopImageType[0].seaZigZag[11].name)
                }
            } else if(ChooseTexture.texture1 == texture[4]){
                switch nomeImgPrincipale {
                    case "QBl", "CBl","TBl","RBl","OBl": imgSecondaria = UIImage(named: structTopImageType[0].woodZigZag[0].name)
                    case "QRosa", "CRosa","TRosa","RRosa","ORosa": imgSecondaria = UIImage(named: structTopImageType[0].woodZigZag[1].name)
                    case "QAr", "CAr","TAr","RAr","OAr": imgSecondaria = UIImage(named: structTopImageType[0].woodZigZag[2].name)
                    case "QVi", "CVi","TVi","RVi","OVi": imgSecondaria = UIImage(named: structTopImageType[0].woodZigZag[3].name)
                    case "QMarrone", "CMarrone","TMarrone","RMarrone","OMarrone": imgSecondaria = UIImage(named: structTopImageType[0].woodZigZag[4].name)
                    case "QNer", "CNer","TNer","RNer","ONer": imgSecondaria = UIImage(named: structTopImageType[0].woodZigZag[5].name)
                    case "QGr", "CGr","TGr","RGr","OGr": imgSecondaria = UIImage(named: structTopImageType[0].woodZigZag[6].name)
                    case "QMarr", "CMarr","TMarr","RMarr","OMarr": imgSecondaria = UIImage(named: structTopImageType[0].woodZigZag[7].name)
                    case "QAzz", "CAzz","TAzz","RAzz","OAzz": imgSecondaria = UIImage(named: structTopImageType[0].woodZigZag[8].name)
                    case "QVer", "CVer","TVer","RVer","OVer": imgSecondaria = UIImage(named: structTopImageType[0].woodZigZag[9].name)
                    case "QRoss", "CRoss","TRoss","RRoss","ORoss": imgSecondaria = UIImage(named: structTopImageType[0].woodZigZag[10].name)
                    default: imgSecondaria = UIImage(named: structTopImageType[0].woodZigZag[11].name)
                }
            } else if(ChooseTexture.texture1 == texture[2]){
                switch nomeImgPrincipale {
                    case "QBl", "CBl","TBl","RBl","OBl": imgSecondaria = UIImage(named: structTopImageType[0].texileZigZag[0].name)
                    case "QRosa", "CRosa","TRosa","RRosa","ORosa": imgSecondaria = UIImage(named: structTopImageType[0].texileZigZag[1].name)
                    case "QAr", "CAr","TAr","RAr","OAr": imgSecondaria = UIImage(named: structTopImageType[0].texileZigZag[2].name)
                    case "QVi", "CVi","TVi","RVi","OVi": imgSecondaria = UIImage(named: structTopImageType[0].texileZigZag[3].name)
                    case "QMarrone", "CMarrone","TMarrone","RMarrone","OMarrone": imgSecondaria = UIImage(named: structTopImageType[0].texileZigZag[4].name)
                    case "QNer", "CNer","TNer","RNer","ONer": imgSecondaria = UIImage(named: structTopImageType[0].texileZigZag[5].name)
                    case "QGr", "CGr","TGr","RGr","OGr": imgSecondaria = UIImage(named: structTopImageType[0].texileZigZag[6].name)
                    case "QMarr", "CMarr","TMarr","RMarr","OMarr": imgSecondaria = UIImage(named: structTopImageType[0].texileZigZag[7].name)
                    case "QAzz", "CAzz","TAzz","RAzz","OAzz": imgSecondaria = UIImage(named: structTopImageType[0].texileZigZag[8].name)
                    case "QVer", "CVer","TVer","RVer","OVer": imgSecondaria = UIImage(named: structTopImageType[0].texileZigZag[9].name)
                    case "QRoss", "CRoss","TRoss","RRoss","ORoss": imgSecondaria = UIImage(named: structTopImageType[0].texileZigZag[10].name)
                    default: imgSecondaria = UIImage(named: structTopImageType[0].texileZigZag[11].name)
                }
            } else if(ChooseTexture.texture1 == texture[1]){
                switch nomeImgPrincipale {
                    case "QBl", "CBl","TBl","RBl","OBl": imgSecondaria = UIImage(named: structTopImageType[0].cratereZigZag[0].name)
                    case "QRosa", "CRosa","TRosa","RRosa","ORosa": imgSecondaria = UIImage(named: structTopImageType[0].cratereZigZag[1].name)
                    case "QAr", "CAr","TAr","RAr","OAr": imgSecondaria = UIImage(named: structTopImageType[0].cratereZigZag[2].name)
                    case "QVi", "CVi","TVi","RVi","OVi": imgSecondaria = UIImage(named: structTopImageType[0].cratereZigZag[3].name)
                    case "QMarrone", "CMarrone","TMarrone","RMarrone","OMarrone": imgSecondaria = UIImage(named: structTopImageType[0].cratereZigZag[4].name)
                    case "QNer", "CNer","TNer","RNer","ONer": imgSecondaria = UIImage(named: structTopImageType[0].cratereZigZag[5].name)
                    case "QGr", "CGr","TGr","RGr","OGr": imgSecondaria = UIImage(named: structTopImageType[0].cratereZigZag[6].name)
                    case "QMarr", "CMarr","TMarr","RMarr","OMarr": imgSecondaria = UIImage(named: structTopImageType[0].cratereZigZag[7].name)
                    case "QAzz", "CAzz","TAzz","RAzz","OAzz": imgSecondaria = UIImage(named: structTopImageType[0].cratereZigZag[8].name)
                    case "QVer", "CVer","TVer","RVer","OVer": imgSecondaria = UIImage(named: structTopImageType[0].cratereZigZag[9].name)
                    case "QRoss", "CRoss","TRoss","RRoss","ORoss": imgSecondaria = UIImage(named: structTopImageType[0].cratereZigZag[10].name)
                    default: imgSecondaria = UIImage(named: structTopImageType[0].cratereZigZag[11].name)
                }
            } else if(ChooseTexture.texture1 == texture[3]){
                switch nomeImgPrincipale {
                    case "QBl", "CBl","TBl","RBl","OBl": imgSecondaria = UIImage(named: structTopImageType[0].marbleZigZag[0].name)
                    case "QRosa", "CRosa","TRosa","RRosa","ORosa": imgSecondaria = UIImage(named: structTopImageType[0].marbleZigZag[1].name)
                    case "QAr", "CAr","TAr","RAr","OAr": imgSecondaria = UIImage(named: structTopImageType[0].marbleZigZag[2].name)
                    case "QVi", "CVi","TVi","RVi","OVi": imgSecondaria = UIImage(named: structTopImageType[0].marbleZigZag[3].name)
                    case "QMarrone", "CMarrone","TMarrone","RMarrone","OMarrone": imgSecondaria = UIImage(named: structTopImageType[0].marbleZigZag[4].name)
                    case "QNer", "CNer","TNer","RNer","ONer": imgSecondaria = UIImage(named: structTopImageType[0].marbleZigZag[5].name)
                    case "QGr", "CGr","TGr","RGr","OGr": imgSecondaria = UIImage(named: structTopImageType[0].marbleZigZag[6].name)
                    case "QMarr", "CMarr","TMarr","RMarr","OMarr": imgSecondaria = UIImage(named: structTopImageType[0].marbleZigZag[7].name)
                    case "QAzz", "CAzz","TAzz","RAzz","OAzz": imgSecondaria = UIImage(named: structTopImageType[0].marbleZigZag[8].name)
                    case "QVer", "CVer","TVer","RVer","OVer": imgSecondaria = UIImage(named: structTopImageType[0].marbleZigZag[9].name)
                    case "QRoss", "CRoss","TRoss","RRoss","ORoss": imgSecondaria = UIImage(named: structTopImageType[0].marbleZigZag[10].name)
                    default: imgSecondaria = UIImage(named: structTopImageType[0].marbleZigZag[11].name)
                }
            }
        }
        
let randomSize = Float.random(in: 1.30..<1.35)
       let randomPos = Int.random(in: 0..<4)
       
       var posizioneGx: [Int], posizioneGy: [Int], posizionePx: [Int], posizionePy: [Int]
       if(UIScreen.main.bounds.width == 414 && UIScreen.main.bounds.height == 896){
           //11 pro max
           posizioneGx = [30,0,180,-10]
           posizioneGy = [-10,0,0,150]
           posizionePx = [180,220,0,210]
           posizionePy = [220,160,190,40]
       } else if (UIScreen.main.bounds.width == 375 && UIScreen.main.bounds.height == 812){
           //XS
           posizioneGx = [0,-10,150,-10]
           posizioneGy = [0,10,-10,150]
           posizionePx = [170,190,0,180]
           posizionePy = [170,140,160,10]
       }else if (UIScreen.main.bounds.width == 414 && UIScreen.main.bounds.height == 736){
           //8 plus
           posizioneGx = [20,-10,180,-10]
           posizioneGy = [-10,10,-10,150]
           posizionePx = [210,230,0,210]
           posizionePy = [190,160,180,40]
       } else {
           //11, 8, SE
           posizioneGx = [0,-10,170,-10]
           posizioneGy = [0,10,-10,150]
           posizionePx = [190,190,10,190]
           posizionePy = [160,140,180,10]
       }
       
          
       var tG = CGAffineTransform.identity
       tG = tG.translatedBy(x: CGFloat(posizioneGx[randomPos]) + top.frame.origin.x, y: CGFloat(posizioneGy[randomPos]) + top.frame.origin.y)
       tG = tG.scaledBy(x: CGFloat(randomSize), y: CGFloat(randomSize))
       imgSG.transform = tG
       imgSG.image = imgSecondaria

       var tP = CGAffineTransform.identity
       tP = tP.translatedBy(x: CGFloat(posizionePx[randomPos]) + top.frame.origin.x, y: CGFloat(posizionePy[randomPos]) + top.frame.origin.y)
       tP = tP.scaledBy(x: CGFloat(randomSize), y: CGFloat(randomSize))
       imgSP.transform = tP
       imgSP.image = imgSecondaria

       top.image = imgPrincipale
        
        if let dir = try? FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false) {
            scarsImage.image = UIImage(named: "2-.jpg")
            let maskView = UIImageView()
            maskView.image = UIImage(contentsOfFile: URL(fileURLWithPath: dir.absoluteString).appendingPathComponent("copy.png").path)
            maskView.frame =  scarsImage.bounds
            scarsImage.mask = maskView
        }
        
            
        screen.image = cropBottomImage(image: view.snapshot() ?? UIImage())
        
//      screen.image = view.snapshot()
        var fontSize : CGFloat = 18
        if(view.frame.width == 375){
            fontSize = 18
        }
        
       
        
        var normalText = text[0]
        var attrs = [NSAttributedString.Key.font : UIFont(name: "Poppins-Light", size: fontSize)]
        let attributedString = NSMutableAttributedString(string:normalText, attributes:attrs as [NSAttributedString.Key : Any])
        
        var boldText = text[1]
             attrs = [NSAttributedString.Key.font : UIFont(name: "Poppins-SemiBold", size: fontSize)]
           let attributedString2 = NSMutableAttributedString(string:boldText, attributes:attrs as [NSAttributedString.Key : Any])
        attributedString.append(attributedString2)


                normalText = text[2]
               attrs = [NSAttributedString.Key.font : UIFont(name: "Poppins-Light", size: fontSize)]
             let attributedString20 = NSMutableAttributedString(string:normalText, attributes:attrs as [NSAttributedString.Key : Any])
               attributedString.append(attributedString20)
               
                boldText = text[3]
                attrs = [NSAttributedString.Key.font : UIFont(name: "Poppins-SemiBold", size: fontSize)]
               
               let attributedString3 = NSMutableAttributedString(string:boldText, attributes:attrs as [NSAttributedString.Key : Any])
               
               attributedString.append(attributedString3)
         
        normalText = text[4]
         attrs = [NSAttributedString.Key.font : UIFont(name: "Poppins-Light", size: fontSize)]
        let attributedString21 = NSMutableAttributedString(string:normalText, attributes:attrs as [NSAttributedString.Key : Any])
                      attributedString.append(attributedString21)
        
        boldText = text[5]
         attrs = [NSAttributedString.Key.font : UIFont(name: "Poppins-SemiBold", size: fontSize)]
        
        let attributedString4 = NSMutableAttributedString(string:boldText, attributes:attrs as [NSAttributedString.Key : Any])
        
        attributedString.append(attributedString4)
        
        normalText = text[6]
        attrs = [NSAttributedString.Key.font : UIFont(name: "Poppins-Light", size: fontSize)]
        let attributedString22 = NSMutableAttributedString(string:normalText, attributes:attrs as [NSAttributedString.Key : Any])
                      attributedString.append(attributedString22)
        
        boldText = text[7]
        attrs = [NSAttributedString.Key.font : UIFont(name: "Poppins-SemiBold", size: fontSize)]
       
       let attributedString5 = NSMutableAttributedString(string:boldText, attributes:attrs as [NSAttributedString.Key : Any])
       
       attributedString.append(attributedString5)
        
        normalText = text[8]
        attrs = [NSAttributedString.Key.font : UIFont(name: "Poppins-Light", size: fontSize)]

        let attributedString23 = NSMutableAttributedString(string:normalText, attributes:attrs as [NSAttributedString.Key : Any])
                      attributedString.append(attributedString23)
        
        boldText = text[9]
         attrs = [NSAttributedString.Key.font : UIFont(name: "Poppins-SemiBold", size: fontSize)]
        
        let attributedString6 = NSMutableAttributedString(string:boldText, attributes:attrs as [NSAttributedString.Key : Any])
        
        attributedString.append(attributedString6)
        
        normalText = text[10]
        attrs = [NSAttributedString.Key.font : UIFont(name: "Poppins-Light", size: fontSize)]

                let attributedString24 = NSMutableAttributedString(string:normalText, attributes:attrs as [NSAttributedString.Key : Any])
                    attributedString.append(attributedString24)
                      
                      label.attributedText = attributedString
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
    
 
        
   
    
    func cropImage(image:UIImage, toRect rect:CGRect) -> UIImage{
        let imageRef:CGImage = image.cgImage!.cropping(to: rect)!
        let croppedImage:UIImage = UIImage(cgImage:imageRef)
        return croppedImage
    }
    
    func cropBottomImage(image: UIImage) -> UIImage {
        let deviceType = UIDevice().type
//        iphone XR
        if(view.frame.width == 414 && view.frame.height == 896 && deviceType != Model(rawValue: "iPhone 11 Pro Max") && deviceType != Model(rawValue: "iPhone XS Max")){
            self.scrollSk.contentSize = CGSize(width: scrollSk.frame.size.width,height: scrollSk.frame.size.height+222 )
           let rect = CGRect(x: 80, y: 355, width: 670, height: 670)
           return cropImage(image: image, toRect: rect)
        }
//            iphone XS
        else  if(view.frame.width == 375 && view.frame.height == 812){
               self.scrollSk.contentSize = CGSize(width: scrollSk.frame.size.width,height: scrollSk.frame.size.height+242 )
           let rect = CGRect(x: 135, y: 520, width: 860, height: 860)
           return cropImage(image: image, toRect: rect)
         
        }
//            iphone 8Plus
        else  if(view.frame.width == 414 && view.frame.height == 736){
           let rect = CGRect(x: 134, y: 535, width: 980, height: 1000)
           return cropImage(image: image, toRect: rect)
        }
//            iphone 8
            else  if(view.frame.width == 375 && view.frame.height == 667){
               let rect = CGRect(x: 85, y: 345, width: 580, height: 580)
               return cropImage(image: image, toRect: rect)
            }
//            iphone 11 pro Max
            else  if(deviceType == Model(rawValue: "iPhone 11 Pro Max") || deviceType == Model(rawValue: "iPhone XS Max")){
            let rect = CGRect(x: 120, y: 535, width: 1000, height: 1000)
            return cropImage(image: image, toRect: rect)
                       }

       
        else{
            return UIImage(named: "")!
        }
    }
    
    @objc func tappedOnLabel(sender : MyTap) {
        
        if let url = NSURL(string: sender.link){
            UIApplication.shared.open(url as URL)
        }
        
    }
    

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "jamm") {
            // pass data to next view
            (segue.destination as! SharePage).img = screen.image ?? UIImage()


        }
    }
    
    func getDocumentsDirectory() -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
    
    @IBAction func saveScreen(_ sender: Any) {
        UIImageWriteToSavedPhotosAlbum(screen.image!, nil, nil, nil)
        let ac = UIAlertController(title: text[11], message: text[12], preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "OK", style: .default))
        present(ac, animated: true)
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

class MyTap1: UITapGestureRecognizer {
    var link = String()
}

public enum Model : String {

//Simulator
case simulator     = "simulator/sandbox",

//iPod
iPod1              = "iPod 1",
iPod2              = "iPod 2",
iPod3              = "iPod 3",
iPod4              = "iPod 4",
iPod5              = "iPod 5",

//iPad
iPad2              = "iPad 2",
iPad3              = "iPad 3",
iPad4              = "iPad 4",
iPadAir            = "iPad Air ",
iPadAir2           = "iPad Air 2",
iPadAir3           = "iPad Air 3",
iPad5              = "iPad 5", //iPad 2017
iPad6              = "iPad 6", //iPad 2018
iPad7              = "iPad 7", //iPad 2019

//iPad Mini
iPadMini           = "iPad Mini",
iPadMini2          = "iPad Mini 2",
iPadMini3          = "iPad Mini 3",
iPadMini4          = "iPad Mini 4",
iPadMini5          = "iPad Mini 5",

//iPad Pro
iPadPro9_7         = "iPad Pro 9.7\"",
iPadPro10_5        = "iPad Pro 10.5\"",
iPadPro11          = "iPad Pro 11\"",
iPadPro12_9        = "iPad Pro 12.9\"",
iPadPro2_12_9      = "iPad Pro 2 12.9\"",
iPadPro3_12_9      = "iPad Pro 3 12.9\"",

//iPhone
iPhone4            = "iPhone 4",
iPhone4S           = "iPhone 4S",
iPhone5            = "iPhone 5",
iPhone5S           = "iPhone 5S",
iPhone5C           = "iPhone 5C",
iPhone6            = "iPhone 6",
iPhone6Plus        = "iPhone 6 Plus",
iPhone6S           = "iPhone 6S",
iPhone6SPlus       = "iPhone 6S Plus",
iPhoneSE           = "iPhone SE",
iPhone7            = "iPhone 7",
iPhone7Plus        = "iPhone 7 Plus",
iPhone8            = "iPhone 8",
iPhone8Plus        = "iPhone 8 Plus",
iPhoneX            = "iPhone X",
iPhoneXS           = "iPhone XS",
iPhoneXSMax        = "iPhone XS Max",
iPhoneXR           = "iPhone XR",
iPhone11           = "iPhone 11",
iPhone11Pro        = "iPhone 11 Pro",
iPhone11ProMax     = "iPhone 11 Pro Max",
iPhoneSE2          = "iPhone SE 2nd gen",

//Apple TV
AppleTV            = "Apple TV",
AppleTV_4K         = "Apple TV 4K",
unrecognized       = "?unrecognized?"
}

// #-#-#-#-#-#-#-#-#-#-#-#-#
// MARK: UIDevice extensions
// #-#-#-#-#-#-#-#-#-#-#-#-#

public extension UIDevice {

var type: Model {
    var systemInfo = utsname()
    uname(&systemInfo)
    let modelCode = withUnsafePointer(to: &systemInfo.machine) {
        $0.withMemoryRebound(to: CChar.self, capacity: 1) {
            ptr in String.init(validatingUTF8: ptr)
        }
    }

    let modelMap : [String: Model] = [

        //Simulator
        "i386"      : .simulator,
        "x86_64"    : .simulator,

        //iPod
        "iPod1,1"   : .iPod1,
        "iPod2,1"   : .iPod2,
        "iPod3,1"   : .iPod3,
        "iPod4,1"   : .iPod4,
        "iPod5,1"   : .iPod5,

        //iPad
        "iPad2,1"   : .iPad2,
        "iPad2,2"   : .iPad2,
        "iPad2,3"   : .iPad2,
        "iPad2,4"   : .iPad2,
        "iPad3,1"   : .iPad3,
        "iPad3,2"   : .iPad3,
        "iPad3,3"   : .iPad3,
        "iPad3,4"   : .iPad4,
        "iPad3,5"   : .iPad4,
        "iPad3,6"   : .iPad4,
        "iPad6,11"  : .iPad5, //iPad 2017
        "iPad6,12"  : .iPad5,
        "iPad7,5"   : .iPad6, //iPad 2018
        "iPad7,6"   : .iPad6,
        "iPad7,11"  : .iPad7, //iPad 2019
        "iPad7,12"  : .iPad7,

        //iPad Mini
        "iPad2,5"   : .iPadMini,
        "iPad2,6"   : .iPadMini,
        "iPad2,7"   : .iPadMini,
        "iPad4,4"   : .iPadMini2,
        "iPad4,5"   : .iPadMini2,
        "iPad4,6"   : .iPadMini2,
        "iPad4,7"   : .iPadMini3,
        "iPad4,8"   : .iPadMini3,
        "iPad4,9"   : .iPadMini3,
        "iPad5,1"   : .iPadMini4,
        "iPad5,2"   : .iPadMini4,
        "iPad11,1"  : .iPadMini5,
        "iPad11,2"  : .iPadMini5,

        //iPad Pro
        "iPad6,3"   : .iPadPro9_7,
        "iPad6,4"   : .iPadPro9_7,
        "iPad7,3"   : .iPadPro10_5,
        "iPad7,4"   : .iPadPro10_5,
        "iPad6,7"   : .iPadPro12_9,
        "iPad6,8"   : .iPadPro12_9,
        "iPad7,1"   : .iPadPro2_12_9,
        "iPad7,2"   : .iPadPro2_12_9,
        "iPad8,1"   : .iPadPro11,
        "iPad8,2"   : .iPadPro11,
        "iPad8,3"   : .iPadPro11,
        "iPad8,4"   : .iPadPro11,
        "iPad8,5"   : .iPadPro3_12_9,
        "iPad8,6"   : .iPadPro3_12_9,
        "iPad8,7"   : .iPadPro3_12_9,
        "iPad8,8"   : .iPadPro3_12_9,

        //iPad Air
        "iPad4,1"   : .iPadAir,
        "iPad4,2"   : .iPadAir,
        "iPad4,3"   : .iPadAir,
        "iPad5,3"   : .iPadAir2,
        "iPad5,4"   : .iPadAir2,
        "iPad11,3"  : .iPadAir3,
        "iPad11,4"  : .iPadAir3,


        //iPhone
        "iPhone3,1" : .iPhone4,
        "iPhone3,2" : .iPhone4,
        "iPhone3,3" : .iPhone4,
        "iPhone4,1" : .iPhone4S,
        "iPhone5,1" : .iPhone5,
        "iPhone5,2" : .iPhone5,
        "iPhone5,3" : .iPhone5C,
        "iPhone5,4" : .iPhone5C,
        "iPhone6,1" : .iPhone5S,
        "iPhone6,2" : .iPhone5S,
        "iPhone7,1" : .iPhone6Plus,
        "iPhone7,2" : .iPhone6,
        "iPhone8,1" : .iPhone6S,
        "iPhone8,2" : .iPhone6SPlus,
        "iPhone8,4" : .iPhoneSE,
        "iPhone9,1" : .iPhone7,
        "iPhone9,3" : .iPhone7,
        "iPhone9,2" : .iPhone7Plus,
        "iPhone9,4" : .iPhone7Plus,
        "iPhone10,1" : .iPhone8,
        "iPhone10,4" : .iPhone8,
        "iPhone10,2" : .iPhone8Plus,
        "iPhone10,5" : .iPhone8Plus,
        "iPhone10,3" : .iPhoneX,
        "iPhone10,6" : .iPhoneX,
        "iPhone11,2" : .iPhoneXS,
        "iPhone11,4" : .iPhoneXSMax,
        "iPhone11,6" : .iPhoneXSMax,
        "iPhone11,8" : .iPhoneXR,
        "iPhone12,1" : .iPhone11,
        "iPhone12,3" : .iPhone11Pro,
        "iPhone12,5" : .iPhone11ProMax,
        "iPhone12,8" : .iPhoneSE2,

        //Apple TV
        "AppleTV5,3" : .AppleTV,
        "AppleTV6,2" : .AppleTV_4K
    ]

    if let model = modelMap[String.init(validatingUTF8: modelCode!)!] {
        if model == .simulator {
            if let simModelCode = ProcessInfo().environment["SIMULATOR_MODEL_IDENTIFIER"] {
                if let simModel = modelMap[String.init(validatingUTF8: simModelCode)!] {
                    return simModel
                }
            }
        }
        return model
    }
    return Model.unrecognized
  }
}
