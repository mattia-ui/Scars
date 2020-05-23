import UIKit
import ViewAnimator
import ObjectMapper
import RxSwift
import RxCocoa
import SDWebImage

protocol MovieListViewControllerDelegate: class {
  func didSelect(movie selectedMovie: Movie)
}

class SecondaTutorial : UIViewController {
    
    @IBOutlet weak var PrimaLabel: UILabel!
    @IBOutlet weak var SecondaLabel: UILabel!
    @IBOutlet weak var TerzaLabel: UILabel!
    @IBOutlet weak var TiziaViola: UIImageView!
    @IBOutlet weak var tab: UIImageView!
    @IBOutlet weak var TiziaBionda: UIImageView!
    @IBOutlet weak var button: UIButton!
    
    var cont = 0
    fileprivate var movies = [Movie]()
    let imageView = UIImageView()
    let maskView = UIImageView()
 
    
    override func viewDidLoad() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.handleTap))
               view.addGestureRecognizer(tap)
        TiziaBionda.alpha = 0
        button.alpha = 0
    
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
            SecondaLabel.text = "will take care of your story"
            TerzaLabel.text = "Find out how to create your unique masterpiece."
            
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
               self.tab.alpha = 0
//            }
            PrimaLabel.text = "Time to explore"
            SecondaLabel.text = "Activities and Insights"
            TerzaLabel.text = "We also provided a lot of interesting tips and inspirational contents for you!"
//            UIView.animate(withDuration: 0.2){
//                self.PrimaLabel.alpha = 1
//                self.SecondaLabel.alpha = 1
//                self.TerzaLabel.alpha = 1
                self.TiziaBionda.alpha = 1
                self.button.alpha = 1
//            }
        }
    }
    
}
