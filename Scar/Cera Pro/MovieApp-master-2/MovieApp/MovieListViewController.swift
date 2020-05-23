//
//  MovieListViewController.swift
//  MovieApp
//
//  Created by asylzhan on 6/5/19.
//  Copyright © 2019 asylzhan. All rights reserved.
//

import UIKit
import ViewAnimator
import RxSwift
import RxCocoa
import SDWebImage

protocol MovieListViewControllerDelegate: class {
  func didSelect(movie selectedMovie: Movie)
}

class MovieListViewController: UIViewController {
  
    fileprivate var movies = [Movie]()
    var presenter: MoviePresentation?
    let imageView = UIImageView()
    let maskView = UIImageView()
    static var i: Int = 0
    static var s: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
//        presenter?.fetchMovies(nome: "the%20theory%20of%20everything", tipo:"movie", yImg: 340)
//        presenter?.fetchMovies(nome: "shallow%20Hal", tipo:"movie", yImg: 150)
//        presenter?.fetchMovies(nome: "orange%20is%20new%20black", tipo:"tv", yImg: 220)
//        presenter?.fetchMovies(nome: "the%20shape%20of%20water", tipo:"movie", yImg: 120)
//        presenter?.fetchMovies(nome: "unBreakable", tipo:"tv", yImg: 200)
//        presenter?.fetchMovies(nome: "pose", tipo:"tv", yImg: 20)
        presenter?.fetchMovies(nome: "border", tipo:"movie", yImg: 130)
//        presenter?.fetchMovies(nome: "glow", tipo:"tv", yImg: 320)
//        presenter?.fetchMovies(nome: "hairspray", tipo:"movie", yImg: 300)
//        presenter?.fetchMovies(nome: "unorthodox", tipo:"tv", yImg: 100)
    }
}


// MARK: - MovieListView
extension MovieListViewController: MovieListView {
    
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
        filtroView.image = UIImage(named: "rettangolo")
        
        let lineaView = UIImageView()
        lineaView.image = UIImage(named: "linea")
        
        var size = CGSize(width: 370, height: 121)
        UIGraphicsBeginImageContext(size)
        
        var areaPrincipale = CGRect(x: 0, y: 0 - yImg  , width: 370, height: 570)
        let areaSecondaria = CGRect(x: 0, y: 0, width: 370, height: 121)

        image?.draw(in: areaPrincipale)
        filtroView.image?.draw(in: areaSecondaria)
        
        var finalImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        UIImageWriteToSavedPhotosAlbum(finalImage!, nil, nil, nil)
        
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
            if let data = UIImagePNGRepresentation(image) {
                let filename = getDocumentsDirectory().appendingPathComponent(nome + ".png")
                try? data.write(to: filename)
            }
        }
        
        if let dir = try? FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false) {
            let maskView = UIImageView()
            maskView.frame = CGRect(x:2 , y: 130, width: 370, height: 121)
            maskView.image = UIImage(contentsOfFile: URL(fileURLWithPath: dir.absoluteString).appendingPathComponent(nome + ".png").path)
            view.addSubview(maskView)
        }
    }
    
    func getDocumentsDirectory() -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
}


