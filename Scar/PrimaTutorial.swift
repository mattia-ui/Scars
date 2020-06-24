import UIKit
import ViewAnimator
import ObjectMapper
import RxSwift
import RxCocoa
import SDWebImage
import SQLite3

protocol MovieListViewControllerDelegate: class {
  func didSelect(movie selectedMovie: Movie)
}

class PrimaTutorial : UIViewController, UITableViewDataSource, UITableViewDelegate,UITextFieldDelegate{

    @IBOutlet weak var illustrazione: UIImageView!
    @IBOutlet weak var welcome: UILabel!
    @IBOutlet weak var frase1: UILabel!
    @IBOutlet weak var domanda1: UILabel!
    @IBOutlet weak var nome1: UITextField!
    @IBOutlet weak var linea: UIImageView!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var TableView: UITableView!
    @IBOutlet weak var LastStep: UILabel!
    @IBOutlet weak var frase3: UILabel!
    @IBOutlet weak var domande3: UILabel!
    @IBOutlet weak var button3: UIButton!
    var text:[String] = []
    var start: String = ""
    var startNo: String = ""
    static var done: String = ""
    var letsgo: String = ""
    
    
    var db: OpaquePointer?
    var stmt: OpaquePointer?
    static var j = 0

    fileprivate var movies = [Movie]()
    let imageView = UIImageView()
    let maskView = UIImageView()

    var selected : [String] = ["","","","","",""]
    var counter = 0
    
    func traslate(view: UIView, aCircleTime: Double, to: CGFloat) {
        print(view.frame.origin.x)
        UIView.animate(withDuration: aCircleTime, animations: {
            () -> Void in
            view.transform = CGAffineTransform(translationX: to, y: 0)
        })
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if self.view.frame.origin.y != 0{
            self.view.frame.origin.y += 150
        }
        controllo()
        self.view.endEditing(true)
        return false
    }
    
    @IBAction func buttonCellPressed(_ sender: UIButton) {

        var temp : [String] = []
        if sender.isSelected {
            counter -= 1
            sender.isSelected = false
            for i in 0...selected.count - 1{
                if(selected[i] != String(sender.title(for: .normal)!)){
                    temp.append(selected[i])
                }
            }
            PrimaTutorial.j = PrimaTutorial.j  - 1
            selected = temp
            selected.append("")
        } else {
            counter += 1
            sender.isSelected = true
            selected[PrimaTutorial.j] = String(String(sender.title(for: .normal) ?? ""))
            PrimaTutorial.j  = PrimaTutorial.j  + 1
        }
        
        for k in 0...selected.count - 1{
            print(selected[k])
        }
        controllo2()
    }

    
    @IBAction func startPressed(_ sender: UIButton) {
        if(nome1.text == ""){
            
        }else{
            TableView.reloadData()
            traslate(view: illustrazione, aCircleTime: 0.2, to: -100)
            traslate(view: welcome, aCircleTime: 0.2, to: -100)
            traslate(view: frase1, aCircleTime: 0.2, to: -100)
            traslate(view: domanda1, aCircleTime: 0.2, to: -100)
            traslate(view: nome1, aCircleTime: 0.2, to: -100)
            traslate(view: linea, aCircleTime: 0.2, to: -100)
            traslate(view: button1, aCircleTime: 0.2, to: -100)
            traslate(view: TableView, aCircleTime: 0.2, to: -100)
            traslate(view: LastStep, aCircleTime: 0.2, to: -100)
            traslate(view: frase3, aCircleTime: 0.2, to: -100)
            traslate(view: domande3, aCircleTime: 0.2, to: -100)
            traslate(view: button3, aCircleTime: 0.2, to: -100)
            sleep(UInt32(0.2))
            
            traslate(view: illustrazione, aCircleTime: 0.4, to: -(view.frame.width - 50))
            traslate(view: welcome, aCircleTime: 0.4, to: -(view.frame.width - 50))
            traslate(view: frase1, aCircleTime: 0.4, to: -(view.frame.width - 50))
            traslate(view: linea, aCircleTime: 0.4, to: -(view.frame.width - 50))
            traslate(view: domanda1, aCircleTime: 0.4, to: -(view.frame.width - 50))
            traslate(view: nome1, aCircleTime: 0.4, to: -(view.frame.width - 50))
            traslate(view: button1, aCircleTime: 0.4, to: -(view.frame.width - 50))
            traslate(view: TableView, aCircleTime: 0.4, to: -(view.frame.width - 50))
            traslate(view: LastStep, aCircleTime: 0.4, to: -(view.frame.width - 50))
            traslate(view: frase3, aCircleTime: 0.4, to: -(view.frame.width - 50))
            traslate(view: domande3, aCircleTime: 0.4, to: -(view.frame.width - 50))
            traslate(view: button3, aCircleTime: 0.4, to: -(view.frame.width - 50))
            sleep(UInt32(0.4))

            traslate(view: illustrazione, aCircleTime: 0.1, to: -view.frame.width)
            traslate(view: welcome, aCircleTime: 0.1, to: -view.frame.width)
            traslate(view: frase1, aCircleTime: 0.1, to: -view.frame.width)
            traslate(view: domanda1, aCircleTime: 0.1, to: -view.frame.width)
            traslate(view: nome1, aCircleTime: 0.1, to: -view.frame.width)
            traslate(view: linea, aCircleTime: 0.1, to: -view.frame.width)
            traslate(view: button1, aCircleTime: 0.1, to: -view.frame.width)
            traslate(view: TableView, aCircleTime: 0.1, to: -view.frame.width)
            traslate(view: LastStep, aCircleTime: 0.1, to: -view.frame.width)
            traslate(view: frase3, aCircleTime: 0.1, to: -view.frame.width)
            traslate(view: domande3, aCircleTime: 0.1, to: -view.frame.width)
            traslate(view: button3, aCircleTime: 0.1, to: -view.frame.width)
        }
        
    }
    @IBAction func donePressed(_ sender: UIButton) {
        traslate(view: illustrazione, aCircleTime: 0.2, to: -514)
        traslate(view: welcome, aCircleTime: 0.2, to: -514)
        traslate(view: frase1, aCircleTime: 0.2, to: -514)
        traslate(view: domanda1, aCircleTime: 0.2, to: -514)
        traslate(view: nome1, aCircleTime: 0.2, to: -514)
        traslate(view: linea, aCircleTime: 0.2, to: -514)
        traslate(view: button1, aCircleTime: 0.2, to: -514)
        traslate(view: TableView, aCircleTime: 0.2, to: -514)
        traslate(view: LastStep, aCircleTime: 0.2, to: -514)
        traslate(view: frase3, aCircleTime: 0.2, to: -514)
        traslate(view: domande3, aCircleTime: 0.2, to: -514)
        traslate(view: button3, aCircleTime: 0.2, to: -514)
        sleep(UInt32(0.2))
        
        traslate(view: illustrazione, aCircleTime: 0.4, to: -((view.frame.width*2) - 50))
        traslate(view: welcome, aCircleTime: 0.4, to: -((view.frame.width*2) - 50))
        traslate(view: frase1, aCircleTime: 0.4, to: -((view.frame.width*2) - 50))
        traslate(view: domanda1, aCircleTime: 0.4, to: -((view.frame.width*2) - 50))
        traslate(view: nome1, aCircleTime: 0.4, to: -((view.frame.width*2) - 50))
        traslate(view: linea, aCircleTime: 0.4, to: -((view.frame.width*2) - 50))
        traslate(view: button1, aCircleTime: 0.4, to: -((view.frame.width*2) - 50))
        traslate(view: TableView, aCircleTime: 0.4, to: -((view.frame.width*2) - 50))
        traslate(view: LastStep, aCircleTime: 0.4, to: -((UIScreen.main.bounds.width*2) - 50))
        traslate(view: frase3, aCircleTime: 0.4, to: -((UIScreen.main.bounds.width*2) - 50))
        traslate(view: domande3, aCircleTime: 0.4, to: -((UIScreen.main.bounds.width*2) - 50))
        traslate(view: button3, aCircleTime: 0.4, to: -((UIScreen.main.bounds.width*2) - 50))
        sleep(UInt32(0.4))

        traslate(view: illustrazione, aCircleTime: 0.1, to: -(UIScreen.main.bounds.width*2))
        traslate(view: welcome, aCircleTime: 0.1, to: -(UIScreen.main.bounds.width*2))
        traslate(view: frase1, aCircleTime: 0.1, to: -(UIScreen.main.bounds.width*2))
        traslate(view: domanda1, aCircleTime: 0.1, to: -(UIScreen.main.bounds.width*2))
        traslate(view: nome1, aCircleTime: 0.1, to: -(UIScreen.main.bounds.width*2))
        traslate(view: linea, aCircleTime: 0.1, to: -(UIScreen.main.bounds.width*2))
        traslate(view: button1, aCircleTime: 0.1, to: -(UIScreen.main.bounds.width*2))
        traslate(view: TableView, aCircleTime: 0.1, to: -(UIScreen.main.bounds.width*2))
        traslate(view: LastStep, aCircleTime: 0.1, to: -(UIScreen.main.bounds.width*2))
        traslate(view: frase3, aCircleTime: 0.1, to: -(UIScreen.main.bounds.width*2))
        
        if(view.frame.height >= 840){
            UIView.animate(withDuration: 0.1, animations: {
                () -> Void in
                self.domande3.transform = CGAffineTransform(translationX: -(UIScreen.main.bounds.width*2), y: -80)
            })
        } else if(view.frame.height >= 712) {
            UIView.animate(withDuration: 0.1, animations: {
                        () -> Void in
                self.domande3.transform = CGAffineTransform(translationX: -(UIScreen.main.bounds.width*2), y: -40)
            })
        } else {
            traslate(view: domande3, aCircleTime: 0.1, to: -(UIScreen.main.bounds.width*2))
        }
        
        traslate(view: button3, aCircleTime: 0.1, to: -(UIScreen.main.bounds.width*2))
        button3.frame.origin.x = (UIScreen.main.bounds.width / 2) - 97
        

        fetchMovies(nome: "the%20theory%20of%20everything", tipo:"movie", yImg: 340)
        fetchMovies(nome: "shallow%20Hal", tipo:"movie", yImg: 150)
        fetchMovies(nome: "orange%20is%20new%20black", tipo:"tv", yImg: 220)
        fetchMovies(nome: "the%20shape%20of%20water", tipo:"movie", yImg: 120)
        fetchMovies(nome: "unBreakable", tipo:"tv", yImg: 200)
        fetchMovies(nome: "pose", tipo:"tv", yImg: 20)
        fetchMovies(nome: "glow", tipo:"tv", yImg: 320)
        fetchMovies(nome: "hairspray", tipo:"movie", yImg: 300)
        fetchMovies(nome: "unorthodox", tipo:"tv", yImg: 100)

        
        let queryString = "UPDATE Insights SET b1 = '\(selected[0])',b2 = '\(selected[1])',b3 = '\(selected[2])',b4 = '\(selected[3])',b5 = '\(selected[4])', b6 = '\(selected[5])';"
                   sqlite3_prepare(db, queryString, -1, &stmt, nil)
                   sqlite3_step(stmt)
        
        //Elimina Tabella. Quando Spostiamo le due funzioni successive nel tutorial non serve piu
        if sqlite3_exec(db, "DROP TABLE Nome", nil, nil, nil) != SQLITE_OK {
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error creating table: \(errmsg)")
        }
                   
        //Crea Tabella. Per valore che dice se mostrare Weekly
        if sqlite3_exec(db, "CREATE TABLE IF NOT EXISTS Nome (id INTEGER PRIMARY KEY AUTOINCREMENT,nome TEXT)", nil, nil, nil) != SQLITE_OK {
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error creating table: \(errmsg)")
        }
                    
        //Inserisce Valore. Va nel tutorial
        let queryString1 = "INSERT INTO Nome(nome) VALUES ('\(nome1.text)');"
        sqlite3_prepare(db, queryString1, -1, &stmt, nil)
        sqlite3_step(stmt)
        print("Saved successfully")
        
        //Elimina Tabella. Quando Spostiamo le due funzioni successive nel tutorial non serve piu
               if sqlite3_exec(db, "DROP TABLE Lingua", nil, nil, nil) != SQLITE_OK {
                   let errmsg = String(cString: sqlite3_errmsg(db)!)
                   print("error creating table: \(errmsg)")
               }
                          
        //Crea Tabella. Per valore che dice se mostrare Weekly
        if sqlite3_exec(db, "CREATE TABLE IF NOT EXISTS Lingua (id INTEGER PRIMARY KEY AUTOINCREMENT,lingua TEXT)", nil, nil, nil) != SQLITE_OK {
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error creating table: \(errmsg)")
        }
                           
        let lingua = Locale.current.languageCode
        print("\n\n\n\n\n\n\n\(lingua)\n\n\n\n\n\n\n")
        if(lingua == "en"){
            //Inserisce Valore. Va nel tutorial
            let queryString2 = "INSERT INTO Lingua(lingua) VALUES ('eng');"
            sqlite3_prepare(db, queryString2, -1, &stmt, nil)
            sqlite3_step(stmt)
            print("Saved successfully")
        } else if (lingua == "it"){
            //Inserisce Valore. Va nel tutorial
            let queryString2 = "INSERT INTO Lingua(lingua) VALUES ('ita');"
            sqlite3_prepare(db, queryString2, -1, &stmt, nil)
            sqlite3_step(stmt)
            print("Saved successfully")
        }
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
           super.viewWillAppear(animated)
           navigationController?.setNavigationBarHidden(true, animated: animated)
        if(view.frame.width == 375){
            for constraint in button3.constraints {
                print(constraint.identifier ?? "cane")
                   if constraint.identifier == "center"{
                    print("EEEEEEE")
                       constraint.constant = 800
                    
                   }
            }
            button3.updateConstraints()
        }
       }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        overrideUserInterfaceStyle = .light
        
        let lingua = Locale.current.languageCode
        print("\n\n\n\n\n\n\n\(lingua)\n\n\n\n\n\n\n")

        if (lingua == "it"){
            text = ITA.textOnPrimaTutorial
            start = ITA.button[9]
            startNo = ITA.button[10]
            PrimaTutorial.done = ITA.button[12]
            letsgo = ITA.button[13]
        } else {
            text = ENG.textOnPrimaTutorial
            start = ENG.button[9]
            startNo = ENG.button[10]
            PrimaTutorial.done = ENG.button[12]
            letsgo = ENG.button[13]
        }
        button1.imageView?.image = UIImage(named: startNo)
        button3.imageView?.image = UIImage(named: letsgo)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)

        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard1))
        view.addGestureRecognizer(tap)
        
        self.nome1.delegate = self
        
        let dateIstallazione = Date()
        let calendar = Calendar.current
        let components = calendar.dateComponents([.year, .month, .day, .hour, .minute, .second], from: dateIstallazione)
                     
        let month = components.month ?? 0
        let day = components.day ?? 0
        let hour = components.hour ?? 0
        let minute = components.minute ?? 0
            
     
                   
        //Si connette al DB
        let fileURL = try!
        FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false).appendingPathComponent("Database.sqlite")
        if sqlite3_open(fileURL.path, &db) != SQLITE_OK {
            print("error opening database")
        }
            
        //Elimina Tabella. Quando Spostiamo le due funzioni successive nel tutorial non serve piu
        if sqlite3_exec(db, "DROP TABLE Collage", nil, nil, nil) != SQLITE_OK {
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error creating table: \(errmsg)")
        }
            
        //Crea Tabella. Per valore che dice se mostrare fakeInsta
        if sqlite3_exec(db, "CREATE TABLE IF NOT EXISTS Collage (id INTEGER PRIMARY KEY AUTOINCREMENT,valore TEXT)", nil, nil, nil) != SQLITE_OK{
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error creating table: \(errmsg)")
        }
             
        //Inserisce Valore. Va nel tutorial
        var queryString = "INSERT INTO Collage(valore) VALUES ('si');"
        sqlite3_prepare(db, queryString, -1, &stmt, nil)
        sqlite3_step(stmt)
        print("Saved successfully")
            
            
        //Elimina Tabella. Quando Spostiamo le due funzioni successive nel tutorial non serve piu
        if sqlite3_exec(db, "DROP TABLE Week", nil, nil, nil) != SQLITE_OK {
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error creating table: \(errmsg)")
        }
            
        //Crea Tabella. Per valore che dice se mostrare Weekly
        if sqlite3_exec(db, "CREATE TABLE IF NOT EXISTS Week (id INTEGER PRIMARY KEY AUTOINCREMENT,valore TEXT)", nil, nil, nil) != SQLITE_OK {
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error creating table: \(errmsg)")
        }
             
        //Inserisce Valore. Va nel tutorial
        queryString = "INSERT INTO Week(valore) VALUES ('0');"
        sqlite3_prepare(db, queryString, -1, &stmt, nil)
        sqlite3_step(stmt)
        print("Saved successfully")
            
        //Elimina Tabella. Quando Spostiamo le due funzioni successive nel tutorial non serve piu
        if sqlite3_exec(db, "DROP TABLE Date", nil, nil, nil) != SQLITE_OK {
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error creating table: \(errmsg)")
        }
            
        //Crea Tabella. Per valore che dice se mostrare fakeInsta
        if sqlite3_exec(db, "CREATE TABLE IF NOT EXISTS Date (id INTEGER PRIMARY KEY AUTOINCREMENT,mese TEXT, giorno TEXT, ora TEXT, minuti TEXT)", nil, nil, nil) != SQLITE_OK {
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error creating table: \(errmsg)")
        }
             
        //Inserisce Valore. Va nel tutorial
        queryString = "INSERT INTO Date (mese,giorno,ora,minuti) VALUES ('\(String(describing: month))','\(String(describing: day))','\(String(describing: hour))','\(String(describing: minute))');"
        sqlite3_prepare(db, queryString, -1, &stmt, nil)
        sqlite3_step(stmt)
        print("Saved successfully")
            
        //Elimina Tabella. Quando Spostiamo le due funzioni successive nel tutorial non serve piu
        if sqlite3_exec(db, "DROP TABLE InfoSchermata1", nil, nil, nil) != SQLITE_OK {
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error creating table: \(errmsg)")
        }
                      
        //Crea Tabella. Per valore che dice se mostrare le check checcate o no
        if sqlite3_exec(db, "CREATE TABLE IF NOT EXISTS InfoSchermata1 (id INTEGER PRIMARY KEY AUTOINCREMENT,c1 TEXT,c2 TEXT,c3 TEXT,c4 TEXT,c5 TEXT,c6 TEXT,c7 TEXT, c8 TEXT,c9 TEXT)", nil, nil, nil) != SQLITE_OK{
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error creating table: \(errmsg)")
        }
                       
        //Inserisce Valore. Va nel tutorial
        queryString = "INSERT INTO InfoSchermata1 (c1,c2,c3,c4,c5,c6,c7,c8,c9) VALUES ('unchecked', 'unchecked', 'unchecked', 'unchecked', 'unchecked','unchecked', 'unchecked', 'unchecked','unchecked');"
        sqlite3_prepare(db, queryString, -1, &stmt, nil)
        sqlite3_step(stmt)
        print("Saved successfully")
            
        //Elimina Tabella. Quando Spostiamo le due funzioni successive nel tutorial non serve piu
        if sqlite3_exec(db, "DROP TABLE Insights", nil, nil, nil) != SQLITE_OK {
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error creating table: \(errmsg)")
        }
                      
        //Crea Tabella. Per valore che dice se mostrare fakeInsta
        if sqlite3_exec(db, "CREATE TABLE IF NOT EXISTS Insights (id INTEGER PRIMARY KEY AUTOINCREMENT,b1 TEXT, b2 TEXT, b3 TEXT, b4 TEXT, b5 TEXT, b6 TEXT)", nil, nil, nil) != SQLITE_OK {
            let errmsg = String(cString: sqlite3_errmsg(db)!)
            print("error creating table: \(errmsg)")
        }
                       
        //Inserisce Valore. Va nel tutorial
        queryString = "INSERT INTO Insights(b1,b2,b3,b4,b5,b6) VALUES ('','','','','','');"
        sqlite3_prepare(db, queryString, -1, &stmt, nil)
        sqlite3_step(stmt)
        print("Saved successfully")
    }
        
    
    @objc func dismissKeyboard1() {
        if self.view.frame.origin.y != 0{
            self.view.frame.origin.y += 150
        }
        controllo()
        view.endEditing(true)
    }
    
    @objc func keyboardWillShow(notification: NSNotification) {
        if ((notification.userInfo?[UIResponder.keyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue) != nil {
            if self.view.frame.origin.y == 0 {
                self.view.frame.origin.y -= 150
            }
        }
    }
    
    func controllo(){
        if(nome1.text != ""){
            button1.isEnabled = true
            button1.imageView?.image = UIImage(named: start)
        } else{
            button1.isEnabled = false
            button1.imageView?.image = UIImage(named: startNo)
        }
    }
    func controllo2(){
        let lingua = Locale.current.languageCode
              if (lingua == "it"){
               if(selected[0] != ""){
                PrimaTutorial.done = ITA.button[11]
                } else {
                PrimaTutorial.done = ITA.button[12]
                }
              } else {
                if(selected[0] != ""){
                  PrimaTutorial.done = ENG.button[11]
                } else {
                  PrimaTutorial.done = ENG.button[12]
                }
              }
        TableView.reloadData()

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
                    
        var ins: [String] = ENG.insights
        
        if indexPath.row == 0 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell1") as? Cella1 else
            {
                return UITableViewCell()
            }
            cell.Hi.text = "\(text[0]) \(String(describing: nome1.text).dropFirst(10).dropLast(2))!"
            cell.selectionStyle = .none

            return cell
        }else if indexPath.row == 1{
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell2") as? Cella2 else
            {
                return UITableViewCell()
            }
            cell.button.setTitle(ins[0], for: .normal)
            cell.button.isSelected = false
            for i in 0...selected.count - 1 {
                if(selected[i] == ins[0]){
                    cell.button.isSelected = true
                }
            }
            cell.button.tag = 0
            cell.selectionStyle = .none

            return cell
        }else if indexPath.row == 2{
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell2") as? Cella2 else
            {
                return UITableViewCell()
            }
            cell.button.setTitle(ins[1], for: .normal)
            cell.button.isSelected = false
            for i in 0...selected.count - 1 {
                if(selected[i] == ins[1]){
                    cell.button.isSelected = true
                }
            }
            cell.button.tag = 1
            cell.selectionStyle = .none

            return cell
        }else if indexPath.row == 3{
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell2") as? Cella2 else
            {
                return UITableViewCell()
            }
            cell.button.setTitle(ins[2], for: .normal)
            cell.button.isSelected = false
            for i in 0...selected.count - 1 {
                if(selected[i] == ins[2]){
                    cell.button.isSelected = true
                }
            }
            cell.button.tag = 2
            cell.selectionStyle = .none

            return cell
        }else if indexPath.row == 4{
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell2") as? Cella2 else
            {
                return UITableViewCell()
            }
            cell.button.setTitle(ins[3], for: .normal)
            cell.button.isSelected = false
            for i in 0...selected.count - 1 {
                if(selected[i] == ins[3]){
                    cell.button.isSelected = true
                }
            }
            cell.button.tag = 3
            cell.selectionStyle = .none

            return cell
        }else if indexPath.row == 5{
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell2") as? Cella2 else
            {
                return UITableViewCell()
            }
            cell.button.setTitle(ins[4], for: .normal)
            cell.button.isSelected = false
            for i in 0...selected.count - 1 {
                if(selected[i] == ins[4]){
                    cell.button.isSelected = true
                }
            }
            cell.button.tag = 4
            cell.selectionStyle = .none

            return cell
        }else if indexPath.row == 6{
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell2") as? Cella2 else
            {
                return UITableViewCell()
            }
            cell.button.setTitle(ins[5], for: .normal)
            cell.button.isSelected = false
            for i in 0...selected.count - 1 {
                if(selected[i] == ins[5]){
                    cell.button.isSelected = true
                }
            }
            cell.button.tag = 5
            cell.selectionStyle = .none

            return cell
        }else{
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell3") as? Cella3 else
            {
                return UITableViewCell()
            }
            if(counter != 0){
                cell.done.isEnabled = true
            } else{
                cell.done.isEnabled = false
            }
            
            cell.done.frame.origin.x = (UIScreen.main.bounds.width / 2) - 91
            cell.done.imageView?.image = UIImage(named: PrimaTutorial.done)
            cell.selectionStyle = .none
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if(indexPath.row == 0){
            return 140
        }
        if(indexPath.row == 7){
            return 200
        }
        return UIScreen.main.bounds.width / 4
    }
    
    public func fetchMovies(nome: String, tipo: String, yImg: Int) {
          fetchPopularMovies(nome: nome, tipo: tipo) {(movies, error) in
              self.updateView(with: movies, yImg: yImg, nome: nome)
          }
      }
          
      func fetchPopularMovies(nome: String, tipo: String, completion: @escaping ([Movie], Error?) -> Void) {
          guard ReachabilityManager.shared.isReachable() else {
              return
          }
          
          MovieAPI.getPopularMovies(nome: nome, tipo: tipo) { (response, error) in
              guard error == nil else {
                  completion([], error)
                  return
              }
            
              guard let results = response?["results"] as? [[String: Any]] else {
                  let err = NSError(domain: "Nope", code: 0, userInfo: nil)
                  completion([], err)
                  return
              }
            
              let movies = Mapper<Movie>().mapArray(JSONArray: results)
              completion(movies, nil)
          }
      }
          
      func updateView(with movies: [Movie], yImg: Int, nome: String) {
                       
          self.movies = movies
          var movie = movies[0]
          if (nome == "border"){
              movie = movies[7]
          }
               
          guard let posterImageURL = movie.posterImageURL else { return }
          let posterURL = URL(string: API.imageURL + posterImageURL)
          let data = try? Data(contentsOf: posterURL!)
          let image = UIImage(data: data!)
               
          let filtroView = UIImageView()
          filtroView.image = UIImage(named: "filtro")
               
          let lineaView = UIImageView()
          lineaView.image = UIImage(named: "linea-1")
               
          var size = CGSize(width: 370, height: 121)
          UIGraphicsBeginImageContext(size)
               
          var areaPrincipale = CGRect(x: 0, y: 0 - yImg  , width: 370, height: 570)
          let areaSecondaria = CGRect(x: 0, y: 0, width: 370, height: 121)

          image?.draw(in: areaPrincipale)
          filtroView.image?.draw(in: areaSecondaria)
               
          var finalImage = UIGraphicsGetImageFromCurrentImageContext()
          UIGraphicsEndImageContext()
               
          var bgImage = UIImageView(image: finalImage)
               
          size = CGSize(width: 370, height: 125)
          UIGraphicsBeginImageContext(size)

          areaPrincipale = CGRect(x: 0, y: 0, width: 370, height: 121)
          let areaTerzaria = CGRect(x: 126, y: 118, width: 122, height: 7)

          bgImage.image?.draw(in: areaPrincipale)
          lineaView.image?.draw(in: areaTerzaria)

          finalImage = UIGraphicsGetImageFromCurrentImageContext()
          UIGraphicsEndImageContext()
          
          bgImage = UIImageView(image: finalImage)
               
          if let image = bgImage.image {
              if let data = image.pngData() {
                  let filename = getDocumentsDirectory().appendingPathComponent(nome + ".png")
                  try? data.write(to: filename)
              }
          }
      }
           
      func getDocumentsDirectory() -> URL {
          let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
          return paths[0]
      }
        
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

