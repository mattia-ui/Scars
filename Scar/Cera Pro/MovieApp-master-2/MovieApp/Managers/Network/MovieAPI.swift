//
//  MovieAPI.swift
//  MovieApp
//
//  Created by asylzhan on 6/7/19.
//  Copyright © 2019 asylzhan. All rights reserved.
//

import Foundation
import Alamofire

class MovieAPI {
    static func getPopularMovies(nome: String, tipo: String, completion: @escaping ResponseHandler) {
        let url = API.mainApiURL + "search/\(tipo)\(API.QueryParam.key)\(API.QueryParam.ruLanguage)\(API.QueryParam.stringResearch)'\(nome)'"
    
        _ = Network.customRequestWith(url: url, method: .get, params: [:], completion: completion)
    }
}


