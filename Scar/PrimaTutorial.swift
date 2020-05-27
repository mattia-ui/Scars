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

class PrimaTutorial : UIViewController, UITableViewDataSource, UITableViewDelegate{

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
            () -> Void in view.transform = CGAffineTransform(translationX: to, y: 0)
        })
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
            
            traslate(view: illustrazione, aCircleTime: 0.4, to: -364)
            traslate(view: welcome, aCircleTime: 0.4, to: -364)
            traslate(view: frase1, aCircleTime: 0.4, to: -364)
            traslate(view: linea, aCircleTime: 0.4, to: -364)
            traslate(view: domanda1, aCircleTime: 0.4, to: -364)
            traslate(view: nome1, aCircleTime: 0.4, to: -364)
            traslate(view: button1, aCircleTime: 0.4, to: -364)
            traslate(view: TableView, aCircleTime: 0.4, to: -364)
            traslate(view: LastStep, aCircleTime: 0.4, to: -364)
            traslate(view: frase3, aCircleTime: 0.4, to: -364)
            traslate(view: domande3, aCircleTime: 0.4, to: -364)
            traslate(view: button3, aCircleTime: 0.4, to: -364)
            sleep(UInt32(0.4))

            traslate(view: illustrazione, aCircleTime: 0.1, to: -414)
            traslate(view: welcome, aCircleTime: 0.1, to: -414)
            traslate(view: frase1, aCircleTime: 0.1, to: -414)
            traslate(view: domanda1, aCircleTime: 0.1, to: -414)
            traslate(view: nome1, aCircleTime: 0.1, to: -414)
            traslate(view: linea, aCircleTime: 0.1, to: -414)
            traslate(view: button1, aCircleTime: 0.1, to: -414)
            traslate(view: TableView, aCircleTime: 0.1, to: -414)
            traslate(view: LastStep, aCircleTime: 0.1, to: -414)
            traslate(view: frase3, aCircleTime: 0.1, to: -414)
            traslate(view: domande3, aCircleTime: 0.1, to: -414)
            traslate(view: button3, aCircleTime: 0.1, to: -414)
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
        
        traslate(view: illustrazione, aCircleTime: 0.4, to: -778)
        traslate(view: welcome, aCircleTime: 0.4, to: -778)
        traslate(view: frase1, aCircleTime: 0.4, to: -778)
        traslate(view: domanda1, aCircleTime: 0.4, to: -778)
        traslate(view: nome1, aCircleTime: 0.4, to: -778)
        traslate(view: linea, aCircleTime: 0.4, to: -778)
        traslate(view: button1, aCircleTime: 0.4, to: -778)
        traslate(view: TableView, aCircleTime: 0.4, to: -778)
        traslate(view: LastStep, aCircleTime: 0.4, to: -778)
        traslate(view: frase3, aCircleTime: 0.4, to: -778)
        traslate(view: domande3, aCircleTime: 0.4, to: -778)
        traslate(view: button3, aCircleTime: 0.4, to: -778)
        sleep(UInt32(0.4))

        traslate(view: illustrazione, aCircleTime: 0.1, to: -828)
        traslate(view: welcome, aCircleTime: 0.1, to: -828)
        traslate(view: frase1, aCircleTime: 0.1, to: -828)
        traslate(view: domanda1, aCircleTime: 0.1, to: -828)
        traslate(view: nome1, aCircleTime: 0.1, to: -828)
        traslate(view: linea, aCircleTime: 0.1, to: -828)
        traslate(view: button1, aCircleTime: 0.1, to: -828)
        traslate(view: TableView, aCircleTime: 0.1, to: -828)
        traslate(view: LastStep, aCircleTime: 0.1, to: -828)
        traslate(view: frase3, aCircleTime: 0.1, to: -828)
        traslate(view: domande3, aCircleTime: 0.1, to: -828)
        traslate(view: button3, aCircleTime: 0.1, to: -828)
        

        fetchMovies(nome: "the%20theory%20of%20everything", tipo:"movie", yImg: 340)
        fetchMovies(nome: "shallow%20Hal", tipo:"movie", yImg: 150)
        fetchMovies(nome: "orange%20is%20new%20black", tipo:"tv", yImg: 220)
        fetchMovies(nome: "the%20shape%20of%20water", tipo:"movie", yImg: 120)
        fetchMovies(nome: "unBreakable", tipo:"tv", yImg: 200)
        fetchMovies(nome: "pose", tipo:"tv", yImg: 20)
        fetchMovies(nome: "border", tipo:"movie", yImg: 130)
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
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
           super.viewWillAppear(animated)
           navigationController?.setNavigationBarHidden(true, animated: animated)
       }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        overrideUserInterfaceStyle = .light
    
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)

        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard1))
        view.addGestureRecognizer(tap)
        
        if UserDefaults.standard.bool(forKey: "LaunchedBefore") {
            self.performSegue(withIdentifier: "notFirst", sender: self)
        }else{
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
            if sqlite3_exec(db, "CREATE TABLE IF NOT EXISTS Collage (id INTEGER PRIMARY KEY AUTOINCREMENT,valore TEXT)", nil, nil, nil) != SQLITE_OK {
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
            if sqlite3_exec(db, "CREATE TABLE IF NOT EXISTS InfoSchermata1 (id INTEGER PRIMARY KEY AUTOINCREMENT,c1 TEXT,c2 TEXT,c3 TEXT,c4 TEXT,c5 TEXT,c6 TEXT,c7 TEXT, c8 TEXT,c9 TEXT)", nil, nil, nil) != SQLITE_OK {
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
        } else{
            button1.isEnabled = false

        }
    }
    func controllo2(){
        TableView.reloadData()

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
        if indexPath.row == 0 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell1") as? Cella1 else
            {
                return UITableViewCell()
            }
            cell.Hi.text = "Hi, \(String(describing: nome1.text).dropFirst(10).dropLast(2))!"
            return cell
        }else if indexPath.row == 1{
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell2") as? Cella2 else
            {
                return UITableViewCell()
            }
            cell.button.setTitle("TEDx", for: .normal)
            cell.button.isSelected = false
            for i in 0...selected.count - 1 {
                if(selected[i] == "TEDx"){
                    cell.button.isSelected = true
                }
            }
            cell.button.tag = 0
            return cell
        }else if indexPath.row == 2{
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell2") as? Cella2 else
            {
                return UITableViewCell()
            }
            cell.button.setTitle("Movies&TVShows", for: .normal)
            cell.button.isSelected = false
            for i in 0...selected.count - 1 {
                if(selected[i] == "Movies&TVShows"){
                    cell.button.isSelected = true
                }
            }
            cell.button.tag = 1
            return cell
        }else if indexPath.row == 3{
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell2") as? Cella2 else
            {
                return UITableViewCell()
            }
            cell.button.setTitle("Articles", for: .normal)
            cell.button.isSelected = false
            for i in 0...selected.count - 1 {
                if(selected[i] == "Articles"){
                    cell.button.isSelected = true
                }
            }
            cell.button.tag = 2
            return cell
        }else if indexPath.row == 4{
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell2") as? Cella2 else
            {
                return UITableViewCell()
            }
            cell.button.setTitle("Books", for: .normal)
            cell.button.isSelected = false
            for i in 0...selected.count - 1 {
                if(selected[i] == "Books"){
                    cell.button.isSelected = true
                }
            }
            cell.button.tag = 3
            return cell
        }else if indexPath.row == 5{
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell2") as? Cella2 else
            {
                return UITableViewCell()
            }
            cell.button.setTitle("Inspiring People", for: .normal)
            cell.button.isSelected = false
            for i in 0...selected.count - 1 {
                if(selected[i] == "Inspiring People"){
                    cell.button.isSelected = true
                }
            }
            cell.button.tag = 4
            return cell
        }else if indexPath.row == 6{
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell2") as? Cella2 else
            {
                return UITableViewCell()
            }
            cell.button.setTitle("Podcasts", for: .normal)
            cell.button.isSelected = false
            for i in 0...selected.count - 1 {
                if(selected[i] == "Podcasts"){
                    cell.button.isSelected = true
                }
            }
            cell.button.tag = 5
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
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if(indexPath.row == 0){
            return 120
        }
        if(indexPath.row == 7){
            return 200
        }
        return 100
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
                  let err = NSError(domain: "Произошла ошибка", code: 0, userInfo: nil)
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
