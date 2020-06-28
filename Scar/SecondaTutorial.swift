import UIKit
import ViewAnimator
import ObjectMapper
import RxSwift
import RxCocoa
import SDWebImage
import SQLite3


class SecondaTutorial : UIViewController {
    
    @IBOutlet weak var PrimaLabel: UILabel!
    @IBOutlet weak var SecondaLabel: UILabel!
    @IBOutlet weak var TerzaLabel: UITextView!
    @IBOutlet weak var TiziaViola: UIImageView!
    @IBOutlet weak var tab: UIImageView!
    @IBOutlet weak var TiziaBionda: UIImageView!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var hashtag: UIImageView!
    var b: String = ""
    var text:[String] = []
    
    var cont = 0
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        var i = 1
        Timer.scheduledTimer(withTimeInterval: 0.05, repeats: true) { timer in
            if(i == 80){
                i = 1
            }
            self.hashtag.image = UIImage(named: "hashtag_\(i)")
            i += 1
        }
    }
    
    override func viewDidLoad() {
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
            text = ENG.textOnSecondaTutorial
            b = ENG.button[8]
         } else if (lingua == "ita"){
            text = ITA.textOnSecondaTutorial
            b =  ITA.button[8]
         }
        
        if(UIScreen.main.bounds.height < 800){
            TiziaBionda.image = UIImage(named: "ILL3")
            TiziaViola.image = UIImage(named: "ILL2")
        }
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.handleTap))
               view.addGestureRecognizer(tap)
        PrimaLabel.text = text[6]
        SecondaLabel.text = text[7]
        TerzaLabel.text = text[0]
        TiziaBionda.alpha = 0
        button.alpha = 0
        
    }
    
    @objc func handleTap(){
        if(cont != 2){
            cont += 1
            change()
        }
    }
    
    func change(){
        if(cont == 1){
            UIView.animate(withDuration: 0.2){
                self.PrimaLabel.alpha = 0
                self.SecondaLabel.alpha = 0
                self.TerzaLabel.alpha = 0
            }
            PrimaLabel.text = "#skinsugi"
            SecondaLabel.text = text[1]
            TerzaLabel.text = text[2]
            
            UIView.animate(withDuration: 0.2){
            self.PrimaLabel.alpha = 1
            self.SecondaLabel.alpha = 1
            self.TerzaLabel.alpha = 1
            }
        }
        else if(cont == 2){
//            UIView.animate(withDuration: 0.2){
//                self.PrimaLabel.alpha = 0
//                self.SecondaLabel.alpha = 0
//                self.TerzaLabel.alpha = 0
                self.TiziaViola.alpha = 0
               self.hashtag.alpha = 0
//            }
            PrimaLabel.text = text[3]
            SecondaLabel.text = text[4]
            TerzaLabel.text = text[5]
//            UIView.animate(withDuration: 0.2){
//                self.PrimaLabel.alpha = 1
//                self.SecondaLabel.alpha = 1
//                self.TerzaLabel.alpha = 1
                self.TiziaBionda.alpha = 1
                self.button.alpha = 1
            print(b)
            button.imageView?.image = UIImage(named: b)
//            }
        }
    }
    
}
