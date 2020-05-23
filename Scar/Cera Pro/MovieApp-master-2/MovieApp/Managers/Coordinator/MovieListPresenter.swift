//
//  MoviePresenter.swift
//  MovieApp
//
//  Created by asylzhan on 6/7/19.
//  Copyright © 2019 asylzhan. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa
import ObjectMapper

// MARK: - MoviePresentation protocol
public protocol MoviePresentation: class {
    func fetchMovies(nome: String, tipo: String, yImg:Int)
}

// MARK: - MovieListView protocol
public protocol MovieListView: class {
    func updateView(with movies: [Movie], yImg: Int, nome:String)
}

// MARK: - MovieListPresenter
public class MovieListPresenter {
  var view: MovieListView?
  fileprivate var movieService: MovieServiceProtocol?
  
  init(movieService: MovieServiceProtocol) {
    self.movieService = movieService
  }
}

extension MovieListPresenter: MoviePresentation {
    public func fetchMovies(nome: String, tipo: String, yImg: Int) {
        movieService?.fetchPopularMovies(nome: nome, tipo: tipo) {(movies, error) in
            self.view?.updateView(with: movies, yImg: yImg, nome: nome)
        }
    }
}
