//
//  SearchContracts.swift
//  IMDbAPI-VIPER
//
//  Created by David Figueroa on 9/10/19.
//  Copyright © 2019 David Figueroa. All rights reserved.
//

import Foundation

// MARK: - View

protocol SeachViewProtocol: class {
    func handleOutput(_ output: SearchPresenterOutput)
}

// MARK: - Interactor

protocol SearchInteractorProtocol: class {
    var delegate: SearchInteractorDelegate? { get set }
    func load(title: String, type: String?, year: String?)
    func loadMovies()
    func getYearDatas()
    func getTypeDatas()
}

protocol SearchInteractorDelegate: class {
    func handleOutput(_ output: SearchInteractorOutput)
}

enum SearchInteractorOutput {
    case setLoading(Bool)
    case getMediaList([Media])
    case allMovies([Media])
    case showYears([String])
    case showTypes([String])
}

// MARK: - Presenter

protocol SearchPresenterProtocol: class {
    func load(title: String, type: String?, year: String?)
    func loadMovies()
    func getYearDatas()
    func getTypeDatas()
    func validateNameField(name: String?)
    func showMediaList(medias: [Media])
}

enum SearchPresenterOutput {
    case updateTitle(String)
    case setLoading(Bool)
    case getMediaList([Media])
    case allMovies([Media])
    case showYears([String])
    case showTypes([String])
    case isValidName(Bool)
}

// MARK: - Router

protocol SearchRouterProtocol: class {
    func navigate(to route: SearchRoute)
}

enum SearchRoute {
    case list([Media])
}
