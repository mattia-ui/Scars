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
    coolSquare: [backImagePalette(name:"QAzz.png"),backImagePalette(name:"QVer.png"),backImagePalette(name:"QVi.png"),backImagePalette(name:"QBl.png")],
    warmSquare: [backImagePalette(name:"QRosa.png"),backImagePalette(name:"QRoss.png"),backImagePalette(name:"QAr.png"),backImagePalette(name:"QGia.png")],
    neutralSquare: [backImagePalette(name:"QMarrone.png"),backImagePalette(name:"QMarr.png"),backImagePalette(name:"QNer.png"),backImagePalette(name:"QGr.png")],
    coolCircle: [backImagePalette(name:"CAzz.png"),backImagePalette(name:"CVer.png"),backImagePalette(name:"CVi.png"),backImagePalette(name:"CBl.png")],
    warmCircle: [backImagePalette(name:"CRosa.png"),backImagePalette(name:"CRoss.png"),backImagePalette(name:"CAr.png"),backImagePalette(name:"CGia.png")],
    neutralCircle: [backImagePalette(name:"CMarrone.png"),backImagePalette(name:"CMarr.png"),backImagePalette(name:"CNer.png"),backImagePalette(name:"CGr.png")],
    coolTriangle: [backImagePalette(name:"TAzz.png"),backImagePalette(name:"TVer.png"),backImagePalette(name:"TVi.png"),backImagePalette(name:"TBl.png")],
    warmTriangle: [backImagePalette(name:"TRosa.png"),backImagePalette(name:"TRoss.png"),backImagePalette(name:"TAr.png"),backImagePalette(name:"TGia.png")],
    neutralTriangle: [backImagePalette(name:"TMarrone.png"),backImagePalette(name:"TMarr.png"),backImagePalette(name:"TNer.png"),backImagePalette(name:"TGr.png")],
    coolRect: [backImagePalette(name:"RAzz.png"),backImagePalette(name:"RVer.png"),backImagePalette(name:"RVi.png"),backImagePalette(name:"RBl.png")],
    warmRect: [backImagePalette(name:"RRosa.png"),backImagePalette(name:"RRoss.png"),backImagePalette(name:"RAr.png"),backImagePalette(name:"RGia.png")],
    neutralRect: [backImagePalette(name:"RMarrone.png"),backImagePalette(name:"RMarr.png"),backImagePalette(name:"RNer.png"),backImagePalette(name:"RGr.png")],
    coolZigZag: [backImagePalette(name:"OAzz.png"),backImagePalette(name:"OVer.png"),backImagePalette(name:"OVi.png"),backImagePalette(name:"OBl.png")],
    warmZigZag: [backImagePalette(name:"ORosa.png"),backImagePalette(name:"ORoss.png"),backImagePalette(name:"OAr.png"),backImagePalette(name:"OGia.png")],
    neutralZigZag: [backImagePalette(name:"OMarrone.png"),backImagePalette(name:"OMarr.png"),backImagePalette(name:"ONer.png"),backImagePalette(name:"OGr.png")]
)]

var structTopImageType = [topImage(
    seaSquare: [topImageTexture(name:"SQAr.png"),topImageTexture(name:"SQAzz.png"),topImageTexture(name:"SQBl.png"),topImageTexture(name:"SQGia.png"),topImageTexture(name:"SQGr.png"),topImageTexture(name:"SQMarr.png"),topImageTexture(name:"SQMarrone.png"),topImageTexture(name:"SQNer.png"),topImageTexture(name:"SQRosa.png"),topImageTexture(name:"SQRoss.png"),topImageTexture(name:"SQVer.png"),topImageTexture(name:"SQVi.png")],
    woodSquare: [topImageTexture(name:"WQAr.png"),topImageTexture(name:"WQAzz.png"),topImageTexture(name:"WQBl.png"),topImageTexture(name:"WQGia.png"),topImageTexture(name:"WQGr.png"),topImageTexture(name:"WQMarr.png"),topImageTexture(name:"WQMarrone.png"),topImageTexture(name:"WQNer.png"),topImageTexture(name:"WQRosa.png"),topImageTexture(name:"WQRoss.png"),topImageTexture(name:"WQVer.png"),topImageTexture(name:"WQVi.png")],
    texileSquare: [topImageTexture(name:"TQAr.png"),topImageTexture(name:"TQAzz.png"),topImageTexture(name:"TQBl.png"),topImageTexture(name:"TQGia.png"),topImageTexture(name:"TQGr.png"),topImageTexture(name:"TQMarr.png"),topImageTexture(name:"TQMarrone.png"),topImageTexture(name:"TQNer.png"),topImageTexture(name:"TQRosa.png"),topImageTexture(name:"TQRoss.png"),topImageTexture(name:"TQVer.png"),topImageTexture(name:"TQVi.png")],
    cratereSquare: [topImageTexture(name:"CQAr.png"),topImageTexture(name:"CQAzz.png"),topImageTexture(name:"CQBl.png"),topImageTexture(name:"CQGia.png"),topImageTexture(name:"CQGr.png"),topImageTexture(name:"CQMarr.png"),topImageTexture(name:"CQMarrone.png"),topImageTexture(name:"CQNer.png"),topImageTexture(name:"CQRosa.png"),topImageTexture(name:"CQRoss.png"),topImageTexture(name:"CQVer.png"),topImageTexture(name:"CQVi.png")],
    marbleSquare: [topImageTexture(name:"MQAr.png"),topImageTexture(name:"MQAzz.png"),topImageTexture(name:"MQBl.png"),topImageTexture(name:"MQGia.png"),topImageTexture(name:"MQGr.png"),topImageTexture(name:"MQMarr.png"),topImageTexture(name:"MQMarrone.png"),topImageTexture(name:"MQNer.png"),topImageTexture(name:"MQRosa.png"),topImageTexture(name:"MQRoss.png"),topImageTexture(name:"MQVer.png"),topImageTexture(name:"MQVi.png")],
    seaCircle: [topImageTexture(name:"SCAr.png"),topImageTexture(name:"SCAzz.png"),topImageTexture(name:"SCBl.png"),topImageTexture(name:"SCGia.png"),topImageTexture(name:"SCGr.png"),topImageTexture(name:"SCMarr.png"),topImageTexture(name:"SCMarrone.png"),topImageTexture(name:"SCNer.png"),topImageTexture(name:"SCRosa.png"),topImageTexture(name:"SCRoss.png"),topImageTexture(name:"SCVer.png"),topImageTexture(name:"SCVi.png")],
    woodCircle: [topImageTexture(name:"WCAr.png"),topImageTexture(name:"WCAzz.png"),topImageTexture(name:"WCBl.png"),topImageTexture(name:"WCGia.png"),topImageTexture(name:"WCGr.png"),topImageTexture(name:"WCMarr.png"),topImageTexture(name:"WCMarrone.png"),topImageTexture(name:"WCNer.png"),topImageTexture(name:"WCRosa.png"),topImageTexture(name:"WCRoss.png"),topImageTexture(name:"WCVer.png"),topImageTexture(name:"WCVi.png")],
    texileCircle: [topImageTexture(name:"TCAr.png"),topImageTexture(name:"TCAzz.png"),topImageTexture(name:"TCBl.png"),topImageTexture(name:"TCGia.png"),topImageTexture(name:"TCGr.png"),topImageTexture(name:"TCMarr.png"),topImageTexture(name:"TCMarrone.png"),topImageTexture(name:"TCNer.png"),topImageTexture(name:"TCRosa.png"),topImageTexture(name:"TCRoss.png"),topImageTexture(name:"TCVer.png"),topImageTexture(name:"TCVi.png")],
    cratereCircle: [topImageTexture(name:"CCAr.png"),topImageTexture(name:"CCAzz.png"),topImageTexture(name:"CCBl.png"),topImageTexture(name:"CCGia.png"),topImageTexture(name:"CCGr.png"),topImageTexture(name:"CCMarr.png"),topImageTexture(name:"CCMarrone.png"),topImageTexture(name:"CCNer.png"),topImageTexture(name:"CCRosa.png"),topImageTexture(name:"CCRoss.png"),topImageTexture(name:"CCVer.png"),topImageTexture(name:"CCVi.png")],
    marbleCircle: [topImageTexture(name:"MCAr.png"),topImageTexture(name:"MCAzz.png"),topImageTexture(name:"MCBl.png"),topImageTexture(name:"MCGia.png"),topImageTexture(name:"MCGr.png"),topImageTexture(name:"MCMarr.png"),topImageTexture(name:"MCMarrone.png"),topImageTexture(name:"MCNer.png"),topImageTexture(name:"MCRosa.png"),topImageTexture(name:"MCRoss.png"),topImageTexture(name:"MCVer.png"),topImageTexture(name:"MCVi.png")],
    seaTriangle: [topImageTexture(name:"STAr.png"),topImageTexture(name:"STAzz.png"),topImageTexture(name:"STBl.png"),topImageTexture(name:"STGia.png"),topImageTexture(name:"STGr.png"),topImageTexture(name:"STMarr.png"),topImageTexture(name:"STMarrone.png"),topImageTexture(name:"STNer.png"),topImageTexture(name:"STRosa.png"),topImageTexture(name:"STRoss.png"),topImageTexture(name:"STVer.png"),topImageTexture(name:"STVi.png")],
    woodTriangle: [topImageTexture(name:"WTAr.png"),topImageTexture(name:"WTAzz.png"),topImageTexture(name:"WTBl.png"),topImageTexture(name:"WTGia.png"),topImageTexture(name:"WTGr.png"),topImageTexture(name:"WTMarr.png"),topImageTexture(name:"WTMarrone.png"),topImageTexture(name:"WTNer.png"),topImageTexture(name:"WTRosa.png"),topImageTexture(name:"WTRoss.png"),topImageTexture(name:"WTVer.png"),topImageTexture(name:"WTVi.png")],
    texileTriangle: [topImageTexture(name:"TTAr.png"),topImageTexture(name:"TTAzz.png"),topImageTexture(name:"TTBl.png"),topImageTexture(name:"TTGia.png"),topImageTexture(name:"TTGr.png"),topImageTexture(name:"TTMarr.png"),topImageTexture(name:"TTMarrone.png"),topImageTexture(name:"TTNer.png"),topImageTexture(name:"TTRosa.png"),topImageTexture(name:"TTRoss.png"),topImageTexture(name:"TTVer.png"),topImageTexture(name:"TTVi.png")],
    cratereTriangle: [topImageTexture(name:"CTAr.png"),topImageTexture(name:"CTAzz.png"),topImageTexture(name:"CTBl.png"),topImageTexture(name:"CTGia.png"),topImageTexture(name:"CTGr.png"),topImageTexture(name:"CTMarr.png"),topImageTexture(name:"CTMarrone.png"),topImageTexture(name:"CTNer.png"),topImageTexture(name:"CTRosa.png"),topImageTexture(name:"CTRoss.png"),topImageTexture(name:"CTVer.png"),topImageTexture(name:"CTVi.png")],
    marbleTriangle: [topImageTexture(name:"MTAr.png"),topImageTexture(name:"MTAzz.png"),topImageTexture(name:"MTBl.png"),topImageTexture(name:"MTGia.png"),topImageTexture(name:"MTGr.png"),topImageTexture(name:"MTMarr.png"),topImageTexture(name:"MTMarrone.png"),topImageTexture(name:"MTNer.png"),topImageTexture(name:"MTRosa.png"),topImageTexture(name:"MTRoss.png"),topImageTexture(name:"MTVer.png"),topImageTexture(name:"MTVi.png")],
    seaRect: [topImageTexture(name:"SRAr.png"),topImageTexture(name:"SRAzz.png"),topImageTexture(name:"SRBl.png"),topImageTexture(name:"SRGia.png"),topImageTexture(name:"SRGr.png"),topImageTexture(name:"SRMarr.png"),topImageTexture(name:"SRMarrone.png"),topImageTexture(name:"SRNer.png"),topImageTexture(name:"SRRosa.png"),topImageTexture(name:"SRRoss.png"),topImageTexture(name:"SRVer.png"),topImageTexture(name:"SRVi.png")],
    woodRect: [topImageTexture(name:"WRAr.png"),topImageTexture(name:"WRAzz.png"),topImageTexture(name:"WRBl.png"),topImageTexture(name:"WRGia.png"),topImageTexture(name:"WRGr.png"),topImageTexture(name:"WRMarr.png"),topImageTexture(name:"WRMarrone.png"),topImageTexture(name:"WRNer.png"),topImageTexture(name:"WRRosa.png"),topImageTexture(name:"WRRoss.png"),topImageTexture(name:"WRVer.png"),topImageTexture(name:"WRVi.png")],
    texileRect: [topImageTexture(name:"TRAr.png"),topImageTexture(name:"TRAzz.png"),topImageTexture(name:"TRBl.png"),topImageTexture(name:"TRGia.png"),topImageTexture(name:"TRGr.png"),topImageTexture(name:"TRMarr.png"),topImageTexture(name:"TRMarrone.png"),topImageTexture(name:"TRNer.png"),topImageTexture(name:"TRRosa.png"),topImageTexture(name:"TRRoss.png"),topImageTexture(name:"TRVer.png"),topImageTexture(name:"TRVi.png")],
    cratereRect: [topImageTexture(name:"CRAr.png"),topImageTexture(name:"CRAzz.png"),topImageTexture(name:"CRBl.png"),topImageTexture(name:"CRGia.png"),topImageTexture(name:"CRGr.png"),topImageTexture(name:"CRMarr.png"),topImageTexture(name:"CRMarrone.png"),topImageTexture(name:"CRNer.png"),topImageTexture(name:"CRRosa.png"),topImageTexture(name:"CRRoss.png"),topImageTexture(name:"CRVer.png"),topImageTexture(name:"CRVi.png")],
    marbleRect: [topImageTexture(name:"MRAr.png"),topImageTexture(name:"MRAzz.png"),topImageTexture(name:"MRBl.png"),topImageTexture(name:"MRGia.png"),topImageTexture(name:"MRGr.png"),topImageTexture(name:"MRMarr.png"),topImageTexture(name:"MRMarrone.png"),topImageTexture(name:"MRNer.png"),topImageTexture(name:"MRRosa.png"),topImageTexture(name:"MRRoss.png"),topImageTexture(name:"MRVer.png"),topImageTexture(name:"MRVi.png")],
    seaZigZag: [topImageTexture(name:"SOAr.png"),topImageTexture(name:"SOAzz.png"),topImageTexture(name:"SOBl.png"),topImageTexture(name:"SOGia.png"),topImageTexture(name:"SOGr.png"),topImageTexture(name:"SOMarr.png"),topImageTexture(name:"SOMarrone.png"),topImageTexture(name:"SONer.png"),topImageTexture(name:"SORosa.png"),topImageTexture(name:"SORoss.png"),topImageTexture(name:"SOVer.png"),topImageTexture(name:"SOVi.png")],
    woodZigZag: [topImageTexture(name:"WOAr.png"),topImageTexture(name:"WOAzz.png"),topImageTexture(name:"WOBl.png"),topImageTexture(name:"WOGia.png"),topImageTexture(name:"WOGr.png"),topImageTexture(name:"WOMarr.png"),topImageTexture(name:"WOMarrone.png"),topImageTexture(name:"WONer.png"),topImageTexture(name:"WORosa.png"),topImageTexture(name:"WORoss.png"),topImageTexture(name:"WOVer.png"),topImageTexture(name:"WOVi.png")],
    texileZigZag: [topImageTexture(name:"TOAr.png"),topImageTexture(name:"TOAzz.png"),topImageTexture(name:"TOBl.png"),topImageTexture(name:"TOGia.png"),topImageTexture(name:"TOGr.png"),topImageTexture(name:"TOMarr.png"),topImageTexture(name:"TOMarrone.png"),topImageTexture(name:"TONer.png"),topImageTexture(name:"TORosa.png"),topImageTexture(name:"TORoss.png"),topImageTexture(name:"TOVer.png"),topImageTexture(name:"TOVi.png")],
    cratereZigZag: [topImageTexture(name:"COAr.png"),topImageTexture(name:"COAzz.png"),topImageTexture(name:"COBl.png"),topImageTexture(name:"COGia.png"),topImageTexture(name:"COGr.png"),topImageTexture(name:"COMarr.png"),topImageTexture(name:"COMarrone.png"),topImageTexture(name:"CONer.png"),topImageTexture(name:"CORosa.png"),topImageTexture(name:"CORoss.png"),topImageTexture(name:"COVer.png"),topImageTexture(name:"COVi.png")],
    marbleZigZag: [topImageTexture(name:"MOAr.png"),topImageTexture(name:"MOAzz.png"),topImageTexture(name:"MOBl.png"),topImageTexture(name:"MOGia.png"),topImageTexture(name:"MOGr.png"),topImageTexture(name:"MOMarr.png"),topImageTexture(name:"MOMarrone.png"),topImageTexture(name:"MONer.png"),topImageTexture(name:"MORosa.png"),topImageTexture(name:"MORoss.png"),topImageTexture(name:"MOVer.png"),topImageTexture(name:"MOVi.png")]
)]

class Collage: UIViewController, UITextFieldDelegate  {
    
    @IBOutlet weak var scarsImage: UIImageView!
    @IBOutlet weak var descriptionField: UITextField!
    @IBOutlet weak var activityField: UIActivityIndicatorView!
    
    @IBOutlet weak var top: UIImageView!
    @IBOutlet weak var screen: UIImageView!
    var imgPrincipale:UIImage?
    var nomeImgPrincipale:String!
    var imgSecondaria:UIImage?

    let dataBase = CKContainer.default().publicCloudDatabase
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if(ChooseShape.shape1 == "square"){
            if(ChoosePalette.color == "cool"){
                let randomInt = Int.random(in: 0..<4)
                imgPrincipale = UIImage(named: structBackImageType[0].coolSquare[randomInt].name)
                nomeImgPrincipale = structBackImageType[0].coolSquare[randomInt].name
            } else if(ChoosePalette.color == "warm"){
                let randomInt = Int.random(in: 0..<4)
                imgPrincipale = UIImage(named: structBackImageType[0].warmSquare[randomInt].name)
                nomeImgPrincipale = structBackImageType[0].warmSquare[randomInt].name
            } else {
                let randomInt = Int.random(in: 0..<4)
                imgPrincipale = UIImage(named: structBackImageType[0].neutralSquare[randomInt].name)
                nomeImgPrincipale = structBackImageType[0].neutralSquare[randomInt].name
            }
        } else if(ChooseShape.shape1 == "circle"){
            if(ChoosePalette.color == "cool"){
                let randomInt = Int.random(in: 0..<4)
                imgPrincipale = UIImage(named: structBackImageType[0].coolCircle[randomInt].name)
                nomeImgPrincipale = structBackImageType[0].coolCircle[randomInt].name
            } else if(ChoosePalette.color == "warm"){
                let randomInt = Int.random(in: 0..<4)
                imgPrincipale = UIImage(named: structBackImageType[0].warmCircle[randomInt].name)
                nomeImgPrincipale = structBackImageType[0].warmCircle[randomInt].name
            } else {
                let randomInt = Int.random(in: 0..<4)
                imgPrincipale = UIImage(named: structBackImageType[0].neutralCircle[randomInt].name)
                nomeImgPrincipale = structBackImageType[0].neutralCircle[randomInt].name
            }
        } else if(ChooseShape.shape1 == "triangle"){
            if(ChoosePalette.color == "cool"){
                let randomInt = Int.random(in: 0..<4)
                imgPrincipale = UIImage(named: structBackImageType[0].coolTriangle[randomInt].name)
                nomeImgPrincipale = structBackImageType[0].coolTriangle[randomInt].name
            } else if(ChoosePalette.color == "warm"){
                let randomInt = Int.random(in: 0..<4)
                imgPrincipale = UIImage(named: structBackImageType[0].warmTriangle[randomInt].name)
                nomeImgPrincipale = structBackImageType[0].warmTriangle[randomInt].name
            } else {
                let randomInt = Int.random(in: 0..<4)
                imgPrincipale = UIImage(named: structBackImageType[0].neutralTriangle[randomInt].name)
                nomeImgPrincipale = structBackImageType[0].neutralTriangle[randomInt].name
            }
        } else if(ChooseShape.shape1 == "rect"){
            if(ChoosePalette.color == "cool"){
                let randomInt = Int.random(in: 0..<4)
                imgPrincipale = UIImage(named: structBackImageType[0].coolRect[randomInt].name)
                nomeImgPrincipale = structBackImageType[0].coolRect[randomInt].name
            } else if(ChoosePalette.color == "warm"){
                let randomInt = Int.random(in: 0..<4)
                imgPrincipale = UIImage(named: structBackImageType[0].warmRect[randomInt].name)
                nomeImgPrincipale = structBackImageType[0].warmRect[randomInt].name
            } else {
                let randomInt = Int.random(in: 0..<4)
                imgPrincipale = UIImage(named: structBackImageType[0].neutralRect[randomInt].name)
                nomeImgPrincipale = structBackImageType[0].neutralRect[randomInt].name
            }
        } else {
            if(ChoosePalette.color == "cool"){
                let randomInt = Int.random(in: 0..<4)
                imgPrincipale = UIImage(named: structBackImageType[0].coolZigZag[randomInt].name)
                nomeImgPrincipale = structBackImageType[0].coolZigZag[randomInt].name
            } else if(ChoosePalette.color == "warm"){
                let randomInt = Int.random(in: 0..<4)
                imgPrincipale = UIImage(named: structBackImageType[0].warmZigZag[randomInt].name)
                nomeImgPrincipale = structBackImageType[0].warmZigZag[randomInt].name
            } else {
                let randomInt = Int.random(in: 0..<4)
                nomeImgPrincipale = structBackImageType[0].neutralZigZag[randomInt].name
                imgPrincipale = UIImage(named: structBackImageType[0].neutralZigZag[randomInt].name)
            }
        }

        
        print(nomeImgPrincipale.dropFirst(0))
        if(ChooseShape2.shape2 == "square"){
            if(ChooseTexture.texture1 == "sea"){
                switch nomeImgPrincipale.dropFirst(0) {
                    case "QBl.png", "CBl.png","TBl.png","RBl.png","OBl.png": imgSecondaria = UIImage(named: structTopImageType[0].seaSquare[0].name)
                     case "QRosa.png", "CRosa.png","TRosa.png","RRosa.png","ORosa.png": imgSecondaria = UIImage(named: structTopImageType[0].seaSquare[1].name)
                     case "QAr.png", "CAr.png","TAr.png","RAr.png","OAr.png": imgSecondaria = UIImage(named: structTopImageType[0].seaSquare[2].name)
                     case "QVi.png", "CVi.png","TVi.png","RVi.png","OVi.png": imgSecondaria = UIImage(named: structTopImageType[0].seaSquare[3].name)
                     case "QMarrone.png", "CMarrone.png","TMarrone.png","RMarrone.png","OMarrone.png": imgSecondaria = UIImage(named: structTopImageType[0].seaSquare[4].name)
                     case "QNer.png", "CNer.png","TNer.png","RNer.png","ONer.png": imgSecondaria = UIImage(named: structTopImageType[0].seaSquare[5].name)
                     case "QGr.png", "CGr.png","TGr.png","RGr.png","OGr.png": imgSecondaria = UIImage(named: structTopImageType[0].seaSquare[6].name)
                     case "QMarr.png", "CMarr.png","TMarr.png","RMarr.png","OMarr.png": imgSecondaria = UIImage(named: structTopImageType[0].seaSquare[7].name)
                     case "QAzz.png", "CAzz.png","TAzz.png","RAzz.png","OAzz.png": imgSecondaria = UIImage(named: structTopImageType[0].seaSquare[8].name)
                     case "QVe.png", "CVe.png","TVe.png","RVe.png","OVe.png": imgSecondaria = UIImage(named: structTopImageType[0].seaSquare[9].name)
                     case "QRoss.png", "CRoss.png","TRoss.png","RRoss.png","ORoss.png": imgSecondaria = UIImage(named: structTopImageType[0].seaSquare[10].name)
                     default: imgSecondaria = UIImage(named: structTopImageType[0].seaSquare[11].name)
                }
            } else if(ChooseTexture.texture1 == "wood"){
                switch nomeImgPrincipale {
                    case "QBl.png", "CBl.png","TBl.png","RBl.png","OBl.png": imgSecondaria = UIImage(named: structTopImageType[0].woodSquare[0].name)
                    case "QRosa.png", "CRosa.png","TRosa.png","RRosa.png","ORosa.png": imgSecondaria = UIImage(named: structTopImageType[0].woodSquare[1].name)
                    case "QAr.png", "CAr.png","TAr.png","RAr.png","OAr.png": imgSecondaria = UIImage(named: structTopImageType[0].woodSquare[2].name)
                    case "QVi.png", "CVi.png","TVi.png","RVi.png","OVi.png": imgSecondaria = UIImage(named: structTopImageType[0].woodSquare[3].name)
                    case "QMarrone.png", "CMarrone.png","TMarrone.png","RMarrone.png","OMarrone.png": imgSecondaria = UIImage(named: structTopImageType[0].woodSquare[4].name)
                    case "QNer.png", "CNer.png","TNer.png","RNer.png","ONer.png": imgSecondaria = UIImage(named: structTopImageType[0].woodSquare[5].name)
                    case "QGr.png", "CGr.png","TGr.png","RGr.png","OGr.png": imgSecondaria = UIImage(named: structTopImageType[0].woodSquare[6].name)
                    case "QMarr.png", "CMarr.png","TMarr.png","RMarr.png","OMarr.png": imgSecondaria = UIImage(named: structTopImageType[0].woodSquare[7].name)
                    case "QAzz.png", "CAzz.png","TAzz.png","RAzz.png","OAzz.png": imgSecondaria = UIImage(named: structTopImageType[0].woodSquare[8].name)
                    case "QVe.png", "CVe.png","TVe.png","RVe.png","OVe.png": imgSecondaria = UIImage(named: structTopImageType[0].woodSquare[9].name)
                    case "QRoss.png", "CRoss.png","TRoss.png","RRoss.png","ORoss.png": imgSecondaria = UIImage(named: structTopImageType[0].woodSquare[10].name)
                    default: imgSecondaria = UIImage(named: structTopImageType[0].woodSquare[11].name)
                }
            } else if(ChooseTexture.texture1 == "texile"){
                switch nomeImgPrincipale {
                    case "QBl.png", "CBl.png","TBl.png","RBl.png","OBl.png": imgSecondaria = UIImage(named: structTopImageType[0].texileSquare[0].name)
                    case "QRosa.png", "CRosa.png","TRosa.png","RRosa.png","ORosa.png": imgSecondaria = UIImage(named: structTopImageType[0].texileSquare[1].name)
                    case "QAr.png", "CAr.png","TAr.png","RAr.png","OAr.png": imgSecondaria = UIImage(named: structTopImageType[0].texileSquare[2].name)
                    case "QVi.png", "CVi.png","TVi.png","RVi.png","OVi.png": imgSecondaria = UIImage(named: structTopImageType[0].texileSquare[3].name)
                    case "QMarrone.png", "CMarrone.png","TMarrone.png","RMarrone.png","OMarrone.png": imgSecondaria = UIImage(named: structTopImageType[0].texileSquare[4].name)
                    case "QNer.png", "CNer.png","TNer.png","RNer.png","ONer.png": imgSecondaria = UIImage(named: structTopImageType[0].texileSquare[5].name)
                    case "QGr.png", "CGr.png","TGr.png","RGr.png","OGr.png": imgSecondaria = UIImage(named: structTopImageType[0].texileSquare[6].name)
                    case "QMarr.png", "CMarr.png","TMarr.png","RMarr.png","OMarr.png": imgSecondaria = UIImage(named: structTopImageType[0].texileSquare[7].name)
                    case "QAzz.png", "CAzz.png","TAzz.png","RAzz.png","OAzz.png": imgSecondaria = UIImage(named: structTopImageType[0].texileSquare[8].name)
                    case "QVe.png", "CVe.png","TVe.png","RVe.png","OVe.png": imgSecondaria = UIImage(named: structTopImageType[0].texileSquare[9].name)
                    case "QRoss.png", "CRoss.png","TRoss.png","RRoss.png","ORoss.png": imgSecondaria = UIImage(named: structTopImageType[0].texileSquare[10].name)
                    default: imgSecondaria = UIImage(named: structTopImageType[0].texileSquare[11].name)
                }
            } else if(ChooseTexture.texture1 == "cratere"){
                switch nomeImgPrincipale {
                    case "QBl.png", "CBl.png","TBl.png","RBl.png","OBl.png": imgSecondaria = UIImage(named: structTopImageType[0].cratereSquare[0].name)
                    case "QRosa.png", "CRosa.png","TRosa.png","RRosa.png","ORosa.png": imgSecondaria = UIImage(named: structTopImageType[0].cratereSquare[1].name)
                    case "QAr.png", "CAr.png","TAr.png","RAr.png","OAr.png": imgSecondaria = UIImage(named: structTopImageType[0].cratereSquare[2].name)
                    case "QVi.png", "CVi.png","TVi.png","RVi.png","OVi.png": imgSecondaria = UIImage(named: structTopImageType[0].cratereSquare[3].name)
                    case "QMarrone.png", "CMarrone.png","TMarrone.png","RMarrone.png","OMarrone.png": imgSecondaria = UIImage(named: structTopImageType[0].cratereSquare[4].name)
                    case "QNer.png", "CNer.png","TNer.png","RNer.png","ONer.png": imgSecondaria = UIImage(named: structTopImageType[0].cratereSquare[5].name)
                    case "QGr.png", "CGr.png","TGr.png","RGr.png","OGr.png": imgSecondaria = UIImage(named: structTopImageType[0].cratereSquare[6].name)
                    case "QMarr.png", "CMarr.png","TMarr.png","RMarr.png","OMarr.png": imgSecondaria = UIImage(named: structTopImageType[0].cratereSquare[7].name)
                    case "QAzz.png", "CAzz.png","TAzz.png","RAzz.png","OAzz.png": imgSecondaria = UIImage(named: structTopImageType[0].cratereSquare[8].name)
                    case "QVe.png", "CVe.png","TVe.png","RVe.png","OVe.png": imgSecondaria = UIImage(named: structTopImageType[0].cratereSquare[9].name)
                    case "QRoss.png", "CRoss.png","TRoss.png","RRoss.png","ORoss.png": imgSecondaria = UIImage(named: structTopImageType[0].cratereSquare[10].name)
                    default: imgSecondaria = UIImage(named: structTopImageType[0].cratereSquare[11].name)
                }
            } else if(ChooseTexture.texture1 == "marble"){
                switch nomeImgPrincipale {
                    case "QBl.png", "CBl.png","TBl.png","RBl.png","OBl.png": imgSecondaria = UIImage(named: structTopImageType[0].marbleSquare[0].name)
                    case "QRosa.png", "CRosa.png","TRosa.png","RRosa.png","ORosa.png": imgSecondaria = UIImage(named: structTopImageType[0].marbleSquare[1].name)
                    case "QAr.png", "CAr.png","TAr.png","RAr.png","OAr.png": imgSecondaria = UIImage(named: structTopImageType[0].marbleSquare[2].name)
                    case "QVi.png", "CVi.png","TVi.png","RVi.png","OVi.png": imgSecondaria = UIImage(named: structTopImageType[0].marbleSquare[3].name)
                    case "QMarrone.png", "CMarrone.png","TMarrone.png","RMarrone.png","OMarrone.png": imgSecondaria = UIImage(named: structTopImageType[0].marbleSquare[4].name)
                    case "QNer.png", "CNer.png","TNer.png","RNer.png","ONer.png": imgSecondaria = UIImage(named: structTopImageType[0].marbleSquare[5].name)
                    case "QGr.png", "CGr.png","TGr.png","RGr.png","OGr.png": imgSecondaria = UIImage(named: structTopImageType[0].marbleSquare[6].name)
                    case "QMarr.png", "CMarr.png","TMarr.png","RMarr.png","OMarr.png": imgSecondaria = UIImage(named: structTopImageType[0].marbleSquare[7].name)
                    case "QAzz.png", "CAzz.png","TAzz.png","RAzz.png","OAzz.png": imgSecondaria = UIImage(named: structTopImageType[0].marbleSquare[8].name)
                    case "QVe.png", "CVe.png","TVe.png","RVe.png","OVe.png": imgSecondaria = UIImage(named: structTopImageType[0].marbleSquare[9].name)
                    case "QRoss.png", "CRoss.png","TRoss.png","RRoss.png","ORoss.png": imgSecondaria = UIImage(named: structTopImageType[0].marbleSquare[10].name)
                    default: imgSecondaria = UIImage(named: structTopImageType[0].marbleSquare[11].name)
                }
            }
        } else if(ChooseShape2.shape2 == "circle"){
            if(ChooseTexture.texture1 == "sea"){
                switch nomeImgPrincipale {
                    case "QBl.png", "CBl.png","TBl.png","RBl.png","OBl.png": imgSecondaria = UIImage(named: structTopImageType[0].seaCircle[0].name)
                    case "QRosa.png", "CRosa.png","TRosa.png","RRosa.png","ORosa.png": imgSecondaria = UIImage(named: structTopImageType[0].seaCircle[1].name)
                    case "QAr.png", "CAr.png","TAr.png","RAr.png","OAr.png": imgSecondaria = UIImage(named: structTopImageType[0].seaCircle[2].name)
                    case "QVi.png", "CVi.png","TVi.png","RVi.png","OVi.png": imgSecondaria = UIImage(named: structTopImageType[0].seaCircle[3].name)
                    case "QMarrone.png", "CMarrone.png","TMarrone.png","RMarrone.png","OMarrone.png": imgSecondaria = UIImage(named: structTopImageType[0].seaCircle[4].name)
                    case "QNer.png", "CNer.png","TNer.png","RNer.png","ONer.png": imgSecondaria = UIImage(named: structTopImageType[0].seaCircle[5].name)
                    case "QGr.png", "CGr.png","TGr.png","RGr.png","OGr.png": imgSecondaria = UIImage(named: structTopImageType[0].seaCircle[6].name)
                    case "QMarr.png", "CMarr.png","TMarr.png","RMarr.png","OMarr.png": imgSecondaria = UIImage(named: structTopImageType[0].seaCircle[7].name)
                    case "QAzz.png", "CAzz.png","TAzz.png","RAzz.png","OAzz.png": imgSecondaria = UIImage(named: structTopImageType[0].seaCircle[8].name)
                    case "QVe.png", "CVe.png","TVe.png","RVe.png","OVe.png": imgSecondaria = UIImage(named: structTopImageType[0].seaCircle[9].name)
                    case "QRoss.png", "CRoss.png","TRoss.png","RRoss.png","ORoss.png": imgSecondaria = UIImage(named: structTopImageType[0].seaCircle[10].name)
                    default: imgSecondaria = UIImage(named: structTopImageType[0].seaCircle[11].name)
                }
            } else if(ChooseTexture.texture1 == "wood"){
                switch nomeImgPrincipale {
                    case "QBl.png", "CBl.png","TBl.png","RBl.png","OBl.png": imgSecondaria = UIImage(named: structTopImageType[0].woodCircle[0].name)
                    case "QRosa.png", "CRosa.png","TRosa.png","RRosa.png","ORosa.png": imgSecondaria = UIImage(named: structTopImageType[0].woodCircle[1].name)
                    case "QAr.png", "CAr.png","TAr.png","RAr.png","OAr.png": imgSecondaria = UIImage(named: structTopImageType[0].woodCircle[2].name)
                    case "QVi.png", "CVi.png","TVi.png","RVi.png","OVi.png": imgSecondaria = UIImage(named: structTopImageType[0].woodCircle[3].name)
                    case "QMarrone.png", "CMarrone.png","TMarrone.png","RMarrone.png","OMarrone.png": imgSecondaria = UIImage(named: structTopImageType[0].woodCircle[4].name)
                    case "QNer.png", "CNer.png","TNer.png","RNer.png","ONer.png": imgSecondaria = UIImage(named: structTopImageType[0].woodCircle[5].name)
                    case "QGr.png", "CGr.png","TGr.png","RGr.png","OGr.png": imgSecondaria = UIImage(named: structTopImageType[0].woodCircle[6].name)
                    case "QMarr.png", "CMarr.png","TMarr.png","RMarr.png","OMarr.png": imgSecondaria = UIImage(named: structTopImageType[0].woodCircle[7].name)
                    case "QAzz.png", "CAzz.png","TAzz.png","RAzz.png","OAzz.png": imgSecondaria = UIImage(named: structTopImageType[0].woodCircle[8].name)
                    case "QVe.png", "CVe.png","TVe.png","RVe.png","OVe.png": imgSecondaria = UIImage(named: structTopImageType[0].woodCircle[9].name)
                    case "QRoss.png", "CRoss.png","TRoss.png","RRoss.png","ORoss.png": imgSecondaria = UIImage(named: structTopImageType[0].woodCircle[10].name)
                    default: imgSecondaria = UIImage(named: structTopImageType[0].woodCircle[11].name)
                }
            } else if(ChooseTexture.texture1 == "texile"){
                switch nomeImgPrincipale {
                    case "QBl.png", "CBl.png","TBl.png","RBl.png","OBl.png": imgSecondaria = UIImage(named: structTopImageType[0].texileCircle[0].name)
                    case "QRosa.png", "CRosa.png","TRosa.png","RRosa.png","ORosa.png": imgSecondaria = UIImage(named: structTopImageType[0].texileCircle[1].name)
                    case "QAr.png", "CAr.png","TAr.png","RAr.png","OAr.png": imgSecondaria = UIImage(named: structTopImageType[0].texileCircle[2].name)
                    case "QVi.png", "CVi.png","TVi.png","RVi.png","OVi.png": imgSecondaria = UIImage(named: structTopImageType[0].texileCircle[3].name)
                    case "QMarrone.png", "CMarrone.png","TMarrone.png","RMarrone.png","OMarrone.png": imgSecondaria = UIImage(named: structTopImageType[0].texileCircle[4].name)
                    case "QNer.png", "CNer.png","TNer.png","RNer.png","ONer.png": imgSecondaria = UIImage(named: structTopImageType[0].texileCircle[5].name)
                    case "QGr.png", "CGr.png","TGr.png","RGr.png","OGr.png": imgSecondaria = UIImage(named: structTopImageType[0].texileCircle[6].name)
                    case "QMarr.png", "CMarr.png","TMarr.png","RMarr.png","OMarr.png": imgSecondaria = UIImage(named: structTopImageType[0].texileCircle[7].name)
                    case "QAzz.png", "CAzz.png","TAzz.png","RAzz.png","OAzz.png": imgSecondaria = UIImage(named: structTopImageType[0].texileCircle[8].name)
                    case "QVe.png", "CVe.png","TVe.png","RVe.png","OVe.png": imgSecondaria = UIImage(named: structTopImageType[0].texileCircle[9].name)
                    case "QRoss.png", "CRoss.png","TRoss.png","RRoss.png","ORoss.png": imgSecondaria = UIImage(named: structTopImageType[0].texileCircle[10].name)
                    default: imgSecondaria = UIImage(named: structTopImageType[0].texileCircle[11].name)
                }
            } else if(ChooseTexture.texture1 == "cratere"){
                switch nomeImgPrincipale {
                    case "QBl.png", "CBl.png","TBl.png","RBl.png","OBl.png": imgSecondaria = UIImage(named: structTopImageType[0].cratereCircle[0].name)
                    case "QRosa.png", "CRosa.png","TRosa.png","RRosa.png","ORosa.png": imgSecondaria = UIImage(named: structTopImageType[0].cratereCircle[1].name)
                    case "QAr.png", "CAr.png","TAr.png","RAr.png","OAr.png": imgSecondaria = UIImage(named: structTopImageType[0].cratereCircle[2].name)
                    case "QVi.png", "CVi.png","TVi.png","RVi.png","OVi.png": imgSecondaria = UIImage(named: structTopImageType[0].cratereCircle[3].name)
                    case "QMarrone.png", "CMarrone.png","TMarrone.png","RMarrone.png","OMarrone.png": imgSecondaria = UIImage(named: structTopImageType[0].cratereCircle[4].name)
                    case "QNer.png", "CNer.png","TNer.png","RNer.png","ONer.png": imgSecondaria = UIImage(named: structTopImageType[0].cratereCircle[5].name)
                    case "QGr.png", "CGr.png","TGr.png","RGr.png","OGr.png": imgSecondaria = UIImage(named: structTopImageType[0].cratereCircle[6].name)
                    case "QMarr.png", "CMarr.png","TMarr.png","RMarr.png","OMarr.png": imgSecondaria = UIImage(named: structTopImageType[0].cratereCircle[7].name)
                    case "QAzz.png", "CAzz.png","TAzz.png","RAzz.png","OAzz.png": imgSecondaria = UIImage(named: structTopImageType[0].cratereCircle[8].name)
                    case "QVe.png", "CVe.png","TVe.png","RVe.png","OVe.png": imgSecondaria = UIImage(named: structTopImageType[0].cratereCircle[9].name)
                    case "QRoss.png", "CRoss.png","TRoss.png","RRoss.png","ORoss.png": imgSecondaria = UIImage(named: structTopImageType[0].cratereCircle[10].name)
                    default: imgSecondaria = UIImage(named: structTopImageType[0].cratereCircle[11].name)
                }
            } else if(ChooseTexture.texture1 == "marble"){
                switch nomeImgPrincipale {
                    case "QBl.png", "CBl.png","TBl.png","RBl.png","OBl.png": imgSecondaria = UIImage(named: structTopImageType[0].marbleCircle[0].name)
                    case "QRosa.png", "CRosa.png","TRosa.png","RRosa.png","ORosa.png": imgSecondaria = UIImage(named: structTopImageType[0].marbleCircle[1].name)
                    case "QAr.png", "CAr.png","TAr.png","RAr.png","OAr.png": imgSecondaria = UIImage(named: structTopImageType[0].marbleCircle[2].name)
                    case "QVi.png", "CVi.png","TVi.png","RVi.png","OVi.png": imgSecondaria = UIImage(named: structTopImageType[0].marbleCircle[3].name)
                    case "QMarrone.png", "CMarrone.png","TMarrone.png","RMarrone.png","OMarrone.png": imgSecondaria = UIImage(named: structTopImageType[0].marbleCircle[4].name)
                    case "QNer.png", "CNer.png","TNer.png","RNer.png","ONer.png": imgSecondaria = UIImage(named: structTopImageType[0].marbleCircle[5].name)
                    case "QGr.png", "CGr.png","TGr.png","RGr.png","OGr.png": imgSecondaria = UIImage(named: structTopImageType[0].marbleCircle[6].name)
                    case "QMarr.png", "CMarr.png","TMarr.png","RMarr.png","OMarr.png": imgSecondaria = UIImage(named: structTopImageType[0].marbleCircle[7].name)
                    case "QAzz.png", "CAzz.png","TAzz.png","RAzz.png","OAzz.png": imgSecondaria = UIImage(named: structTopImageType[0].marbleCircle[8].name)
                    case "QVe.png", "CVe.png","TVe.png","RVe.png","OVe.png": imgSecondaria = UIImage(named: structTopImageType[0].marbleCircle[9].name)
                    case "QRoss.png", "CRoss.png","TRoss.png","RRoss.png","ORoss.png": imgSecondaria = UIImage(named: structTopImageType[0].marbleCircle[10].name)
                    default: imgSecondaria = UIImage(named: structTopImageType[0].marbleCircle[11].name)
                }
            }
        } else if(ChooseShape2.shape2 == "trianle"){
            if(ChooseTexture.texture1 == "sea"){
                switch nomeImgPrincipale {
                    case "QBl.png", "CBl.png","TBl.png","RBl.png","OBl.png": imgSecondaria = UIImage(named: structTopImageType[0].seaTriangle[0].name)
                    case "QRosa.png", "CRosa.png","TRosa.png","RRosa.png","ORosa.png": imgSecondaria = UIImage(named: structTopImageType[0].seaTriangle[1].name)
                    case "QAr.png", "CAr.png","TAr.png","RAr.png","OAr.png": imgSecondaria = UIImage(named: structTopImageType[0].seaTriangle[2].name)
                    case "QVi.png", "CVi.png","TVi.png","RVi.png","OVi.png": imgSecondaria = UIImage(named: structTopImageType[0].seaTriangle[3].name)
                    case "QMarrone.png", "CMarrone.png","TMarrone.png","RMarrone.png","OMarrone.png": imgSecondaria = UIImage(named: structTopImageType[0].seaTriangle[4].name)
                    case "QNer.png", "CNer.png","TNer.png","RNer.png","ONer.png": imgSecondaria = UIImage(named: structTopImageType[0].seaTriangle[5].name)
                    case "QGr.png", "CGr.png","TGr.png","RGr.png","OGr.png": imgSecondaria = UIImage(named: structTopImageType[0].seaTriangle[6].name)
                    case "QMarr.png", "CMarr.png","TMarr.png","RMarr.png","OMarr.png": imgSecondaria = UIImage(named: structTopImageType[0].seaTriangle[7].name)
                    case "QAzz.png", "CAzz.png","TAzz.png","RAzz.png","OAzz.png": imgSecondaria = UIImage(named: structTopImageType[0].seaTriangle[8].name)
                    case "QVe.png", "CVe.png","TVe.png","RVe.png","OVe.png": imgSecondaria = UIImage(named: structTopImageType[0].seaTriangle[9].name)
                    case "QRoss.png", "CRoss.png","TRoss.png","RRoss.png","ORoss.png": imgSecondaria = UIImage(named: structTopImageType[0].seaTriangle[10].name)
                    default: imgSecondaria = UIImage(named: structTopImageType[0].seaTriangle[11].name)
                }
            } else if(ChooseTexture.texture1 == "wood"){
                switch nomeImgPrincipale {
                    case "QBl.png", "CBl.png","TBl.png","RBl.png","OBl.png": imgSecondaria = UIImage(named: structTopImageType[0].woodTriangle[0].name)
                    case "QRosa.png", "CRosa.png","TRosa.png","RRosa.png","ORosa.png": imgSecondaria = UIImage(named: structTopImageType[0].woodTriangle[1].name)
                    case "QAr.png", "CAr.png","TAr.png","RAr.png","OAr.png": imgSecondaria = UIImage(named: structTopImageType[0].woodTriangle[2].name)
                    case "QVi.png", "CVi.png","TVi.png","RVi.png","OVi.png": imgSecondaria = UIImage(named: structTopImageType[0].woodTriangle[3].name)
                    case "QMarrone.png", "CMarrone.png","TMarrone.png","RMarrone.png","OMarrone.png": imgSecondaria = UIImage(named: structTopImageType[0].woodTriangle[4].name)
                    case "QNer.png", "CNer.png","TNer.png","RNer.png","ONer.png": imgSecondaria = UIImage(named: structTopImageType[0].woodTriangle[5].name)
                    case "QGr.png", "CGr.png","TGr.png","RGr.png","OGr.png": imgSecondaria = UIImage(named: structTopImageType[0].woodTriangle[6].name)
                    case "QMarr.png", "CMarr.png","TMarr.png","RMarr.png","OMarr.png": imgSecondaria = UIImage(named: structTopImageType[0].woodTriangle[7].name)
                    case "QAzz.png", "CAzz.png","TAzz.png","RAzz.png","OAzz.png": imgSecondaria = UIImage(named: structTopImageType[0].woodTriangle[8].name)
                    case "QVe.png", "CVe.png","TVe.png","RVe.png","OVe.png": imgSecondaria = UIImage(named: structTopImageType[0].woodTriangle[9].name)
                    case "QRoss.png", "CRoss.png","TRoss.png","RRoss.png","ORoss.png": imgSecondaria = UIImage(named: structTopImageType[0].woodTriangle[10].name)
                    default: imgSecondaria = UIImage(named: structTopImageType[0].woodTriangle[11].name)
                }
            } else if(ChooseTexture.texture1 == "texile"){
                switch nomeImgPrincipale {
                    case "QBl.png", "CBl.png","TBl.png","RBl.png","OBl.png": imgSecondaria = UIImage(named: structTopImageType[0].texileTriangle[0].name)
                    case "QRosa.png", "CRosa.png","TRosa.png","RRosa.png","ORosa.png": imgSecondaria = UIImage(named: structTopImageType[0].texileTriangle[1].name)
                    case "QAr.png", "CAr.png","TAr.png","RAr.png","OAr.png": imgSecondaria = UIImage(named: structTopImageType[0].texileTriangle[2].name)
                    case "QVi.png", "CVi.png","TVi.png","RVi.png","OVi.png": imgSecondaria = UIImage(named: structTopImageType[0].texileTriangle[3].name)
                    case "QMarrone.png", "CMarrone.png","TMarrone.png","RMarrone.png","OMarrone.png": imgSecondaria = UIImage(named: structTopImageType[0].texileTriangle[4].name)
                    case "QNer.png", "CNer.png","TNer.png","RNer.png","ONer.png": imgSecondaria = UIImage(named: structTopImageType[0].texileTriangle[5].name)
                    case "QGr.png", "CGr.png","TGr.png","RGr.png","OGr.png": imgSecondaria = UIImage(named: structTopImageType[0].texileTriangle[6].name)
                    case "QMarr.png", "CMarr.png","TMarr.png","RMarr.png","OMarr.png": imgSecondaria = UIImage(named: structTopImageType[0].texileTriangle[7].name)
                    case "QAzz.png", "CAzz.png","TAzz.png","RAzz.png","OAzz.png": imgSecondaria = UIImage(named: structTopImageType[0].texileTriangle[8].name)
                    case "QVe.png", "CVe.png","TVe.png","RVe.png","OVe.png": imgSecondaria = UIImage(named: structTopImageType[0].texileTriangle[9].name)
                    case "QRoss.png", "CRoss.png","TRoss.png","RRoss.png","ORoss.png": imgSecondaria = UIImage(named: structTopImageType[0].texileTriangle[10].name)
                    default: imgSecondaria = UIImage(named: structTopImageType[0].texileTriangle[11].name)
                }
            } else if(ChooseTexture.texture1 == "cratere"){
                switch nomeImgPrincipale {
                    case "QBl.png", "CBl.png","TBl.png","RBl.png","OBl.png": imgSecondaria = UIImage(named: structTopImageType[0].cratereTriangle[0].name)
                    case "QRosa.png", "CRosa.png","TRosa.png","RRosa.png","ORosa.png": imgSecondaria = UIImage(named: structTopImageType[0].cratereTriangle[1].name)
                    case "QAr.png", "CAr.png","TAr.png","RAr.png","OAr.png": imgSecondaria = UIImage(named: structTopImageType[0].cratereTriangle[2].name)
                    case "QVi.png", "CVi.png","TVi.png","RVi.png","OVi.png": imgSecondaria = UIImage(named: structTopImageType[0].cratereTriangle[3].name)
                    case "QMarrone.png", "CMarrone.png","TMarrone.png","RMarrone.png","OMarrone.png": imgSecondaria = UIImage(named: structTopImageType[0].cratereTriangle[4].name)
                    case "QNer.png", "CNer.png","TNer.png","RNer.png","ONer.png": imgSecondaria = UIImage(named: structTopImageType[0].cratereTriangle[5].name)
                    case "QGr.png", "CGr.png","TGr.png","RGr.png","OGr.png": imgSecondaria = UIImage(named: structTopImageType[0].cratereTriangle[6].name)
                    case "QMarr.png", "CMarr.png","TMarr.png","RMarr.png","OMarr.png": imgSecondaria = UIImage(named: structTopImageType[0].cratereTriangle[7].name)
                    case "QAzz.png", "CAzz.png","TAzz.png","RAzz.png","OAzz.png": imgSecondaria = UIImage(named: structTopImageType[0].cratereTriangle[8].name)
                    case "QVe.png", "CVe.png","TVe.png","RVe.png","OVe.png": imgSecondaria = UIImage(named: structTopImageType[0].cratereTriangle[9].name)
                    case "QRoss.png", "CRoss.png","TRoss.png","RRoss.png","ORoss.png": imgSecondaria = UIImage(named: structTopImageType[0].cratereTriangle[10].name)
                    default: imgSecondaria = UIImage(named: structTopImageType[0].cratereTriangle[11].name)
                }
            } else if(ChooseTexture.texture1 == "marble"){
                switch nomeImgPrincipale {
                    case "QBl.png", "CBl.png","TBl.png","RBl.png","OBl.png": imgSecondaria = UIImage(named: structTopImageType[0].marbleTriangle[0].name)
                    case "QRosa.png", "CRosa.png","TRosa.png","RRosa.png","ORosa.png": imgSecondaria = UIImage(named: structTopImageType[0].marbleTriangle[1].name)
                    case "QAr.png", "CAr.png","TAr.png","RAr.png","OAr.png": imgSecondaria = UIImage(named: structTopImageType[0].marbleTriangle[2].name)
                    case "QVi.png", "CVi.png","TVi.png","RVi.png","OVi.png": imgSecondaria = UIImage(named: structTopImageType[0].marbleTriangle[3].name)
                    case "QMarrone.png", "CMarrone.png","TMarrone.png","RMarrone.png","OMarrone.png": imgSecondaria = UIImage(named: structTopImageType[0].marbleTriangle[4].name)
                    case "QNer.png", "CNer.png","TNer.png","RNer.png","ONer.png": imgSecondaria = UIImage(named: structTopImageType[0].marbleTriangle[5].name)
                    case "QGr.png", "CGr.png","TGr.png","RGr.png","OGr.png": imgSecondaria = UIImage(named: structTopImageType[0].marbleTriangle[6].name)
                    case "QMarr.png", "CMarr.png","TMarr.png","RMarr.png","OMarr.png": imgSecondaria = UIImage(named: structTopImageType[0].marbleTriangle[7].name)
                    case "QAzz.png", "CAzz.png","TAzz.png","RAzz.png","OAzz.png": imgSecondaria = UIImage(named: structTopImageType[0].marbleTriangle[8].name)
                    case "QVe.png", "CVe.png","TVe.png","RVe.png","OVe.png": imgSecondaria = UIImage(named: structTopImageType[0].marbleTriangle[9].name)
                    case "QRoss.png", "CRoss.png","TRoss.png","RRoss.png","ORoss.png": imgSecondaria = UIImage(named: structTopImageType[0].marbleTriangle[10].name)
                    default: imgSecondaria = UIImage(named: structTopImageType[0].marbleTriangle[11].name)
                }
            }
        } else if(ChooseShape2.shape2 == "rect"){
            if(ChooseTexture.texture1 == "sea"){
                switch nomeImgPrincipale {
                    case "QBl.png", "CBl.png","TBl.png","RBl.png","OBl.png": imgSecondaria = UIImage(named: structTopImageType[0].seaRect[0].name)
                    case "QRosa.png", "CRosa.png","TRosa.png","RRosa.png","ORosa.png": imgSecondaria = UIImage(named: structTopImageType[0].seaRect[1].name)
                    case "QAr.png", "CAr.png","TAr.png","RAr.png","OAr.png": imgSecondaria = UIImage(named: structTopImageType[0].seaRect[2].name)
                    case "QVi.png", "CVi.png","TVi.png","RVi.png","OVi.png": imgSecondaria = UIImage(named: structTopImageType[0].seaRect[3].name)
                    case "QMarrone.png", "CMarrone.png","TMarrone.png","RMarrone.png","OMarrone.png": imgSecondaria = UIImage(named: structTopImageType[0].seaRect[4].name)
                    case "QNer.png", "CNer.png","TNer.png","RNer.png","ONer.png": imgSecondaria = UIImage(named: structTopImageType[0].seaRect[5].name)
                    case "QGr.png", "CGr.png","TGr.png","RGr.png","OGr.png": imgSecondaria = UIImage(named: structTopImageType[0].seaRect[6].name)
                    case "QMarr.png", "CMarr.png","TMarr.png","RMarr.png","OMarr.png": imgSecondaria = UIImage(named: structTopImageType[0].seaRect[7].name)
                    case "QAzz.png", "CAzz.png","TAzz.png","RAzz.png","OAzz.png": imgSecondaria = UIImage(named: structTopImageType[0].seaRect[8].name)
                    case "QVe.png", "CVe.png","TVe.png","RVe.png","OVe.png": imgSecondaria = UIImage(named: structTopImageType[0].seaRect[9].name)
                    case "QRoss.png", "CRoss.png","TRoss.png","RRoss.png","ORoss.png": imgSecondaria = UIImage(named: structTopImageType[0].seaRect[10].name)
                    default: imgSecondaria = UIImage(named: structTopImageType[0].seaRect[11].name)
                }
            } else if(ChooseTexture.texture1 == "wood"){
                switch nomeImgPrincipale {
                    case "QBl.png", "CBl.png","TBl.png","RBl.png","OBl.png": imgSecondaria = UIImage(named: structTopImageType[0].woodRect[0].name)
                    case "QRosa.png", "CRosa.png","TRosa.png","RRosa.png","ORosa.png": imgSecondaria = UIImage(named: structTopImageType[0].woodRect[1].name)
                    case "QAr.png", "CAr.png","TAr.png","RAr.png","OAr.png": imgSecondaria = UIImage(named: structTopImageType[0].woodRect[2].name)
                    case "QVi.png", "CVi.png","TVi.png","RVi.png","OVi.png": imgSecondaria = UIImage(named: structTopImageType[0].woodRect[3].name)
                    case "QMarrone.png", "CMarrone.png","TMarrone.png","RMarrone.png","OMarrone.png": imgSecondaria = UIImage(named: structTopImageType[0].woodRect[4].name)
                    case "QNer.png", "CNer.png","TNer.png","RNer.png","ONer.png": imgSecondaria = UIImage(named: structTopImageType[0].woodRect[5].name)
                    case "QGr.png", "CGr.png","TGr.png","RGr.png","OGr.png": imgSecondaria = UIImage(named: structTopImageType[0].woodRect[6].name)
                    case "QMarr.png", "CMarr.png","TMarr.png","RMarr.png","OMarr.png": imgSecondaria = UIImage(named: structTopImageType[0].woodRect[7].name)
                    case "QAzz.png", "CAzz.png","TAzz.png","RAzz.png","OAzz.png": imgSecondaria = UIImage(named: structTopImageType[0].woodRect[8].name)
                    case "QVe.png", "CVe.png","TVe.png","RVe.png","OVe.png": imgSecondaria = UIImage(named: structTopImageType[0].woodRect[9].name)
                    case "QRoss.png", "CRoss.png","TRoss.png","RRoss.png","ORoss.png": imgSecondaria = UIImage(named: structTopImageType[0].woodRect[10].name)
                    default: imgSecondaria = UIImage(named: structTopImageType[0].woodRect[11].name)
                }
            } else if(ChooseTexture.texture1 == "texile"){
                switch nomeImgPrincipale {
                    case "QBl.png", "CBl.png","TBl.png","RBl.png","OBl.png": imgSecondaria = UIImage(named: structTopImageType[0].texileRect[0].name)
                    case "QRosa.png", "CRosa.png","TRosa.png","RRosa.png","ORosa.png": imgSecondaria = UIImage(named: structTopImageType[0].texileRect[1].name)
                    case "QAr.png", "CAr.png","TAr.png","RAr.png","OAr.png": imgSecondaria = UIImage(named: structTopImageType[0].texileRect[2].name)
                    case "QVi.png", "CVi.png","TVi.png","RVi.png","OVi.png": imgSecondaria = UIImage(named: structTopImageType[0].texileRect[3].name)
                    case "QMarrone.png", "CMarrone.png","TMarrone.png","RMarrone.png","OMarrone.png": imgSecondaria = UIImage(named: structTopImageType[0].texileRect[4].name)
                    case "QNer.png", "CNer.png","TNer.png","RNer.png","ONer.png": imgSecondaria = UIImage(named: structTopImageType[0].texileRect[5].name)
                    case "QGr.png", "CGr.png","TGr.png","RGr.png","OGr.png": imgSecondaria = UIImage(named: structTopImageType[0].texileRect[6].name)
                    case "QMarr.png", "CMarr.png","TMarr.png","RMarr.png","OMarr.png": imgSecondaria = UIImage(named: structTopImageType[0].texileRect[7].name)
                    case "QAzz.png", "CAzz.png","TAzz.png","RAzz.png","OAzz.png": imgSecondaria = UIImage(named: structTopImageType[0].texileRect[8].name)
                    case "QVe.png", "CVe.png","TVe.png","RVe.png","OVe.png": imgSecondaria = UIImage(named: structTopImageType[0].texileRect[9].name)
                    case "QRoss.png", "CRoss.png","TRoss.png","RRoss.png","ORoss.png": imgSecondaria = UIImage(named: structTopImageType[0].texileRect[10].name)
                    default: imgSecondaria = UIImage(named: structTopImageType[0].texileRect[11].name)
                }
            } else if(ChooseTexture.texture1 == "cratere"){
                switch nomeImgPrincipale {
                    case "QBl.png", "CBl.png","TBl.png","RBl.png","OBl.png": imgSecondaria = UIImage(named: structTopImageType[0].cratereRect[0].name)
                    case "QRosa.png", "CRosa.png","TRosa.png","RRosa.png","ORosa.png": imgSecondaria = UIImage(named: structTopImageType[0].cratereRect[1].name)
                    case "QAr.png", "CAr.png","TAr.png","RAr.png","OAr.png": imgSecondaria = UIImage(named: structTopImageType[0].cratereRect[2].name)
                    case "QVi.png", "CVi.png","TVi.png","RVi.png","OVi.png": imgSecondaria = UIImage(named: structTopImageType[0].cratereRect[3].name)
                    case "QMarrone.png", "CMarrone.png","TMarrone.png","RMarrone.png","OMarrone.png": imgSecondaria = UIImage(named: structTopImageType[0].cratereRect[4].name)
                    case "QNer.png", "CNer.png","TNer.png","RNer.png","ONer.png": imgSecondaria = UIImage(named: structTopImageType[0].cratereRect[5].name)
                    case "QGr.png", "CGr.png","TGr.png","RGr.png","OGr.png": imgSecondaria = UIImage(named: structTopImageType[0].cratereRect[6].name)
                    case "QMarr.png", "CMarr.png","TMarr.png","RMarr.png","OMarr.png": imgSecondaria = UIImage(named: structTopImageType[0].cratereRect[7].name)
                    case "QAzz.png", "CAzz.png","TAzz.png","RAzz.png","OAzz.png": imgSecondaria = UIImage(named: structTopImageType[0].cratereRect[8].name)
                    case "QVe.png", "CVe.png","TVe.png","RVe.png","OVe.png": imgSecondaria = UIImage(named: structTopImageType[0].cratereRect[9].name)
                    case "QRoss.png", "CRoss.png","TRoss.png","RRoss.png","ORoss.png": imgSecondaria = UIImage(named: structTopImageType[0].cratereRect[10].name)
                    default: imgSecondaria = UIImage(named: structTopImageType[0].cratereRect[11].name)
                }
            } else if(ChooseTexture.texture1 == "marble"){
                switch nomeImgPrincipale {
                    case "QBl.png", "CBl.png","TBl.png","RBl.png","OBl.png": imgSecondaria = UIImage(named: structTopImageType[0].marbleRect[0].name)
                    case "QRosa.png", "CRosa.png","TRosa.png","RRosa.png","ORosa.png": imgSecondaria = UIImage(named: structTopImageType[0].marbleRect[1].name)
                    case "QAr.png", "CAr.png","TAr.png","RAr.png","OAr.png": imgSecondaria = UIImage(named: structTopImageType[0].marbleRect[2].name)
                    case "QVi.png", "CVi.png","TVi.png","RVi.png","OVi.png": imgSecondaria = UIImage(named: structTopImageType[0].marbleRect[3].name)
                    case "QMarrone.png", "CMarrone.png","TMarrone.png","RMarrone.png","OMarrone.png": imgSecondaria = UIImage(named: structTopImageType[0].marbleRect[4].name)
                    case "QNer.png", "CNer.png","TNer.png","RNer.png","ONer.png": imgSecondaria = UIImage(named: structTopImageType[0].marbleRect[5].name)
                    case "QGr.png", "CGr.png","TGr.png","RGr.png","OGr.png": imgSecondaria = UIImage(named: structTopImageType[0].marbleRect[6].name)
                    case "QMarr.png", "CMarr.png","TMarr.png","RMarr.png","OMarr.png": imgSecondaria = UIImage(named: structTopImageType[0].marbleRect[7].name)
                    case "QAzz.png", "CAzz.png","TAzz.png","RAzz.png","OAzz.png": imgSecondaria = UIImage(named: structTopImageType[0].marbleRect[8].name)
                    case "QVe.png", "CVe.png","TVe.png","RVe.png","OVe.png": imgSecondaria = UIImage(named: structTopImageType[0].marbleRect[9].name)
                    case "QRoss.png", "CRoss.png","TRoss.png","RRoss.png","ORoss.png": imgSecondaria = UIImage(named: structTopImageType[0].marbleRect[10].name)
                    default: imgSecondaria = UIImage(named: structTopImageType[0].marbleRect[11].name)
                }
            }
        }  else {
            if(ChooseTexture.texture1 == "sea"){
                switch nomeImgPrincipale {
                    case "QBl.png", "CBl.png","TBl.png","RBl.png","OBl.png": imgSecondaria = UIImage(named: structTopImageType[0].seaZigZag[0].name)
                    case "QRosa.png", "CRosa.png","TRosa.png","RRosa.png","ORosa.png": imgSecondaria = UIImage(named: structTopImageType[0].seaZigZag[1].name)
                    case "QAr.png", "CAr.png","TAr.png","RAr.png","OAr.png": imgSecondaria = UIImage(named: structTopImageType[0].seaZigZag[2].name)
                    case "QVi.png", "CVi.png","TVi.png","RVi.png","OVi.png": imgSecondaria = UIImage(named: structTopImageType[0].seaZigZag[3].name)
                    case "QMarrone.png", "CMarrone.png","TMarrone.png","RMarrone.png","OMarrone.png": imgSecondaria = UIImage(named: structTopImageType[0].seaZigZag[4].name)
                    case "QNer.png", "CNer.png","TNer.png","RNer.png","ONer.png": imgSecondaria = UIImage(named: structTopImageType[0].seaZigZag[5].name)
                    case "QGr.png", "CGr.png","TGr.png","RGr.png","OGr.png": imgSecondaria = UIImage(named: structTopImageType[0].seaZigZag[6].name)
                    case "QMarr.png", "CMarr.png","TMarr.png","RMarr.png","OMarr.png": imgSecondaria = UIImage(named: structTopImageType[0].seaZigZag[7].name)
                    case "QAzz.png", "CAzz.png","TAzz.png","RAzz.png","OAzz.png": imgSecondaria = UIImage(named: structTopImageType[0].seaZigZag[8].name)
                    case "QVe.png", "CVe.png","TVe.png","RVe.png","OVe.png": imgSecondaria = UIImage(named: structTopImageType[0].seaZigZag[9].name)
                    case "QRoss.png", "CRoss.png","TRoss.png","RRoss.png","ORoss.png": imgSecondaria = UIImage(named: structTopImageType[0].seaZigZag[10].name)
                    default: imgSecondaria = UIImage(named: structTopImageType[0].seaZigZag[11].name)
                }
            } else if(ChooseTexture.texture1 == "wood"){
                switch nomeImgPrincipale {
                    case "QBl.png", "CBl.png","TBl.png","RBl.png","OBl.png": imgSecondaria = UIImage(named: structTopImageType[0].woodZigZag[0].name)
                    case "QRosa.png", "CRosa.png","TRosa.png","RRosa.png","ORosa.png": imgSecondaria = UIImage(named: structTopImageType[0].woodZigZag[1].name)
                    case "QAr.png", "CAr.png","TAr.png","RAr.png","OAr.png": imgSecondaria = UIImage(named: structTopImageType[0].woodZigZag[2].name)
                    case "QVi.png", "CVi.png","TVi.png","RVi.png","OVi.png": imgSecondaria = UIImage(named: structTopImageType[0].woodZigZag[3].name)
                    case "QMarrone.png", "CMarrone.png","TMarrone.png","RMarrone.png","OMarrone.png": imgSecondaria = UIImage(named: structTopImageType[0].woodZigZag[4].name)
                    case "QNer.png", "CNer.png","TNer.png","RNer.png","ONer.png": imgSecondaria = UIImage(named: structTopImageType[0].woodZigZag[5].name)
                    case "QGr.png", "CGr.png","TGr.png","RGr.png","OGr.png": imgSecondaria = UIImage(named: structTopImageType[0].woodZigZag[6].name)
                    case "QMarr.png", "CMarr.png","TMarr.png","RMarr.png","OMarr.png": imgSecondaria = UIImage(named: structTopImageType[0].woodZigZag[7].name)
                    case "QAzz.png", "CAzz.png","TAzz.png","RAzz.png","OAzz.png": imgSecondaria = UIImage(named: structTopImageType[0].woodZigZag[8].name)
                    case "QVe.png", "CVe.png","TVe.png","RVe.png","OVe.png": imgSecondaria = UIImage(named: structTopImageType[0].woodZigZag[9].name)
                    case "QRoss.png", "CRoss.png","TRoss.png","RRoss.png","ORoss.png": imgSecondaria = UIImage(named: structTopImageType[0].woodZigZag[10].name)
                    default: imgSecondaria = UIImage(named: structTopImageType[0].woodZigZag[11].name)
                }
            } else if(ChooseTexture.texture1 == "texile"){
                switch nomeImgPrincipale {
                    case "QBl.png", "CBl.png","TBl.png","RBl.png","OBl.png": imgSecondaria = UIImage(named: structTopImageType[0].texileZigZag[0].name)
                    case "QRosa.png", "CRosa.png","TRosa.png","RRosa.png","ORosa.png": imgSecondaria = UIImage(named: structTopImageType[0].texileZigZag[1].name)
                    case "QAr.png", "CAr.png","TAr.png","RAr.png","OAr.png": imgSecondaria = UIImage(named: structTopImageType[0].texileZigZag[2].name)
                    case "QVi.png", "CVi.png","TVi.png","RVi.png","OVi.png": imgSecondaria = UIImage(named: structTopImageType[0].texileZigZag[3].name)
                    case "QMarrone.png", "CMarrone.png","TMarrone.png","RMarrone.png","OMarrone.png": imgSecondaria = UIImage(named: structTopImageType[0].texileZigZag[4].name)
                    case "QNer.png", "CNer.png","TNer.png","RNer.png","ONer.png": imgSecondaria = UIImage(named: structTopImageType[0].texileZigZag[5].name)
                    case "QGr.png", "CGr.png","TGr.png","RGr.png","OGr.png": imgSecondaria = UIImage(named: structTopImageType[0].texileZigZag[6].name)
                    case "QMarr.png", "CMarr.png","TMarr.png","RMarr.png","OMarr.png": imgSecondaria = UIImage(named: structTopImageType[0].texileZigZag[7].name)
                    case "QAzz.png", "CAzz.png","TAzz.png","RAzz.png","OAzz.png": imgSecondaria = UIImage(named: structTopImageType[0].texileZigZag[8].name)
                    case "QVe.png", "CVe.png","TVe.png","RVe.png","OVe.png": imgSecondaria = UIImage(named: structTopImageType[0].texileZigZag[9].name)
                    case "QRoss.png", "CRoss.png","TRoss.png","RRoss.png","ORoss.png": imgSecondaria = UIImage(named: structTopImageType[0].texileZigZag[10].name)
                    default: imgSecondaria = UIImage(named: structTopImageType[0].texileZigZag[11].name)
                }
            } else if(ChooseTexture.texture1 == "cratere"){
                switch nomeImgPrincipale {
                    case "QBl.png", "CBl.png","TBl.png","RBl.png","OBl.png": imgSecondaria = UIImage(named: structTopImageType[0].cratereZigZag[0].name)
                    case "QRosa.png", "CRosa.png","TRosa.png","RRosa.png","ORosa.png": imgSecondaria = UIImage(named: structTopImageType[0].cratereZigZag[1].name)
                    case "QAr.png", "CAr.png","TAr.png","RAr.png","OAr.png": imgSecondaria = UIImage(named: structTopImageType[0].cratereZigZag[2].name)
                    case "QVi.png", "CVi.png","TVi.png","RVi.png","OVi.png": imgSecondaria = UIImage(named: structTopImageType[0].cratereZigZag[3].name)
                    case "QMarrone.png", "CMarrone.png","TMarrone.png","RMarrone.png","OMarrone.png": imgSecondaria = UIImage(named: structTopImageType[0].cratereZigZag[4].name)
                    case "QNer.png", "CNer.png","TNer.png","RNer.png","ONer.png": imgSecondaria = UIImage(named: structTopImageType[0].cratereZigZag[5].name)
                    case "QGr.png", "CGr.png","TGr.png","RGr.png","OGr.png": imgSecondaria = UIImage(named: structTopImageType[0].cratereZigZag[6].name)
                    case "QMarr.png", "CMarr.png","TMarr.png","RMarr.png","OMarr.png": imgSecondaria = UIImage(named: structTopImageType[0].cratereZigZag[7].name)
                    case "QAzz.png", "CAzz.png","TAzz.png","RAzz.png","OAzz.png": imgSecondaria = UIImage(named: structTopImageType[0].cratereZigZag[8].name)
                    case "QVe.png", "CVe.png","TVe.png","RVe.png","OVe.png": imgSecondaria = UIImage(named: structTopImageType[0].cratereZigZag[9].name)
                    case "QRoss.png", "CRoss.png","TRoss.png","RRoss.png","ORoss.png": imgSecondaria = UIImage(named: structTopImageType[0].cratereZigZag[10].name)
                    default: imgSecondaria = UIImage(named: structTopImageType[0].cratereZigZag[11].name)
                }
            } else if(ChooseTexture.texture1 == "marble"){
                switch nomeImgPrincipale {
                    case "QBl.png", "CBl.png","TBl.png","RBl.png","OBl.png": imgSecondaria = UIImage(named: structTopImageType[0].marbleZigZag[0].name)
                    case "QRosa.png", "CRosa.png","TRosa.png","RRosa.png","ORosa.png": imgSecondaria = UIImage(named: structTopImageType[0].marbleZigZag[1].name)
                    case "QAr.png", "CAr.png","TAr.png","RAr.png","OAr.png": imgSecondaria = UIImage(named: structTopImageType[0].marbleZigZag[2].name)
                    case "QVi.png", "CVi.png","TVi.png","RVi.png","OVi.png": imgSecondaria = UIImage(named: structTopImageType[0].marbleZigZag[3].name)
                    case "QMarrone.png", "CMarrone.png","TMarrone.png","RMarrone.png","OMarrone.png": imgSecondaria = UIImage(named: structTopImageType[0].marbleZigZag[4].name)
                    case "QNer.png", "CNer.png","TNer.png","RNer.png","ONer.png": imgSecondaria = UIImage(named: structTopImageType[0].marbleZigZag[5].name)
                    case "QGr.png", "CGr.png","TGr.png","RGr.png","OGr.png": imgSecondaria = UIImage(named: structTopImageType[0].marbleZigZag[6].name)
                    case "QMarr.png", "CMarr.png","TMarr.png","RMarr.png","OMarr.png": imgSecondaria = UIImage(named: structTopImageType[0].marbleZigZag[7].name)
                    case "QAzz.png", "CAzz.png","TAzz.png","RAzz.png","OAzz.png": imgSecondaria = UIImage(named: structTopImageType[0].marbleZigZag[8].name)
                    case "QVe.png", "CVe.png","TVe.png","RVe.png","OVe.png": imgSecondaria = UIImage(named: structTopImageType[0].marbleZigZag[9].name)
                    case "QRoss.png", "CRoss.png","TRoss.png","RRoss.png","ORoss.png": imgSecondaria = UIImage(named: structTopImageType[0].marbleZigZag[10].name)
                    default: imgSecondaria = UIImage(named: structTopImageType[0].marbleZigZag[11].name)
                }
            }
        }
    
        mergeTwoImages(principale: imgPrincipale ?? UIImage(), aggiunta: imgSecondaria ?? UIImage(), x: 8, y: 8, width: 90, height: 90)
        mergeTwoImages(principale: imgPrincipale ?? UIImage(), aggiunta: imgSecondaria ?? UIImage(), x: 200, y: 200, width: 50, height: 50)

        
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
