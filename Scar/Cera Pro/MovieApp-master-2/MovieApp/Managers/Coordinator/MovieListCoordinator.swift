//
//  MovieListCoordinator.swift
//  MovieApp
//
//  Created by asylzhan on 6/7/19.
//  Copyright © 2019 asylzhan. All rights reserved.
//

import UIKit

class MovieListCoordinator: Coordinator {
  private let navigationController: UINavigationController
  private var movieListViewController: MovieListViewController?
  private let movieService: MovieService = MovieService()

  init(navigationController: UINavigationController) {
    self.navigationController = navigationController
  }
  
  func start() {
    let movieListVC = MovieListViewController()
    let presenter = MovieListPresenter(movieService: movieService)
    movieListVC.presenter = presenter
    presenter.view = movieListVC
    
    navigationController.pushViewController(movieListVC, animated: true)
    self.movieListViewController = movieListVC
  }
}


