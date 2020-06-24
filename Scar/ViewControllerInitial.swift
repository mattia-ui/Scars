//
//  ViewControllerInitial.swift
//  Scar
//
//  Created by Mattia Cardone on 05/05/2020.
//  Copyright © 2020 Mattia Cardone. All rights reserved.
//

import UIKit
import SQLite3

struct ContenutoStruct {
    var contenuto: String
    var titolo: String
    var righe: Int
}

struct ActivityStruct {
    var attivita1: [ContenutoStruct]
    var attivita2: [ContenutoStruct]
    var attivita3: [ContenutoStruct]
    var attivita4: [ContenutoStruct]
    var attivita5: [ContenutoStruct]
    var attivita6: [ContenutoStruct]
    var attivita7: [ContenutoStruct]
    var attivita8: [ContenutoStruct]
    var attivita9: [ContenutoStruct]
}

class ViewControllerInitial: UIViewController, UIScrollViewDelegate {

    
    var id1: Int!
    var dati:[ActivityStruct] = []
    var attivita: [ContenutoStruct] = []
    var slides:[Slide] = []
    var sfondi: [String] = ["background","background2","background3","BackTake","background5","BackDo1","background7","background8","background9"]
    var sfondiNav: [String] = []
    @IBOutlet weak var scrollView: UIScrollView!{
        didSet{ scrollView.delegate = self }
    }
        
    
    @IBOutlet weak var imageNav: UIImageView!

    @IBAction func back(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let secondVC = storyboard.instantiateViewController(withIdentifier: "collectionInitial")  as! Schermata1
        self.navigationController?.view.semanticContentAttribute = .forceRightToLeft
        self.navigationController?.pushViewController(secondVC, animated: true)
    }
    
    @IBAction func done(_ sender: Any) {
        var db: OpaquePointer?

        //Si connette al DB
        let fileURL = try!
        FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false).appendingPathComponent("Database.sqlite")
        if sqlite3_open(fileURL.path, &db) != SQLITE_OK {
            print("error opening database")
        }
               
        //Update Valore
        var stmt: OpaquePointer?
        var attivita = ""
        switch id1 {
            case 0: attivita = "c1"
            case 1: attivita = "c2"
            case 2: attivita = "c3"
            case 3: attivita = "c4"
            case 4: attivita = "c5"
            case 5: attivita = "c6"
            case 6: attivita = "c7"
            case 7: attivita = "c8"
            default: attivita = "c9"
        }
        let queryString = "UPDATE InfoSchermata1 SET \(attivita) = 'checked';"
        sqlite3_prepare(db, queryString, -1, &stmt, nil)
        sqlite3_step(stmt)
        print("Saved successfully")
           
        let secondVC = storyboard?.instantiateViewController(withIdentifier: "collectionInitial")  as! Schermata1
        self.navigationController?.view.semanticContentAttribute = .forceRightToLeft
        self.navigationController?.pushViewController(secondVC, animated: true)
       }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: true)
        
       viewDidLoad()
    }

    
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
                     sfondiNav = ENG.sfondiNav
                     dati = ENG.ViewControllerInitialdati
                  } else if (lingua == "ita"){
                     sfondiNav = ITA.sfondiNav
                     dati = ITA.ViewControllerInitialdati
                  }
        
        imageNav.image = UIImage(named: sfondiNav[id1])
        slides = createSlides()
        setupSlideScrollView(slides: slides)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
        
    func createSlides() -> [Slide] {
        switch id1 {
            case 0: attivita = dati[0].attivita1
            case 1: attivita = dati[0].attivita2
            case 2: attivita = dati[0].attivita3
            case 3: attivita = dati[0].attivita4
            case 4: attivita = dati[0].attivita5
            case 5: attivita = dati[0].attivita6
            case 6: attivita = dati[0].attivita7
            case 7: attivita = dati[0].attivita8
            default: attivita = dati[0].attivita9
        }
            
        for i in 0 ..< attivita.count{
            let slide2:Slide = Bundle.main.loadNibNamed("Slide", owner: self, options: nil)?.first as! Slide
            slide2.labelTitle.text = attivita[i].titolo
            slide2.labelDesc.text = attivita[i].contenuto
            slides.append(slide2)
        }
        return slides
    }
        
        
    func setupSlideScrollView(slides : [Slide]) {
        let imageViewBackground = UIImageView()
        imageViewBackground.image = UIImage(named: sfondi[id1])
        imageViewBackground.frame = CGRect(x: 0, y: 0, width: imageViewBackground.image?.size.width ?? 0, height: imageViewBackground.image?.size.height ?? 0)
        scrollView.addSubview(imageViewBackground)
            
        scrollView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        scrollView.isPagingEnabled = true
            
        var numberL = 2
        for i in 0 ..< slides.count {
            slides[i].frame = CGRect(x: 0, y: 20 * CGFloat(numberL), width: view.frame.width, height: view.frame.height)
            if(i != 0){
                slides[i].labelTitle.font = UIFont(name: "Poppins-Bold", size: 18.0)
                slides[i].labelDesc.font = UIFont(name: "Roboto-Light", size: 18.0)
            } else {
                slides[i].labelTitle.font = UIFont(name: "Poppins-Bold", size: 18.0)
                slides[i].labelDesc.font = UIFont(name: "Roboto-Light", size: 18.0)
            }
            scrollView.addSubview(slides[i])
            numberL = attivita[i].righe
        }
            
        let image = UIImage(named: "MarkAsDone1") as UIImage?
        let button = UIButton(type: UIButton.ButtonType.custom) as UIButton
        button.frame = CGRect(x: 84, y: 20.30 *  CGFloat(numberL) + 50, width: 244, height: 55)
        button.setImage(image, for: .normal)
        button.addTarget(self, action: "done:", for: UIControl.Event.touchUpInside)
        scrollView.addSubview(button)
        
        if(UIScreen.main.bounds.height > 700){
            scrollView.contentSize = CGSize(width: view.frame.width , height: 20.5 * CGFloat(numberL) + 133)
        } else {
            scrollView.contentSize = CGSize(width: view.frame.width , height: 20.5 * CGFloat(numberL) + 133 * 2)
        }
    }
}

