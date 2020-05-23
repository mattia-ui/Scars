//
//  MovieService.swift
//  MovieApp
//
//  Created by asylzhan on 6/6/19.
//  Copyright © 2019 asylzhan. All rights reserved.
//

import Foundation
import ObjectMapper
import RxSwift
import RxCocoa
import CoreData
import Alamofire

public protocol MovieServiceProtocol {
    func fetchPopularMovies(nome: String, tipo:String, completion: @escaping([Movie], Error?) -> Void)
}

class MovieService: MovieServiceProtocol {
  /// Get popular movies
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
  }

