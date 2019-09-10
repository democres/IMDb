//
//  MediaListPresenter.swift
//  IMDbAPI-VIPER
//
//  Created David Figueroa on 9/10/19.
//  Copyright © 2019 David Figueroa. All rights reserved.
//

import UIKit

class MediaListPresenter {

    weak private var view: MediaListViewProtocol?
    private let media: SearchModel

    init(view: MediaListViewProtocol, media: SearchModel) {
        self.view = view
        self.media = media
    }
}

extension MediaListPresenter: MediaListPresenterProtocol {
    func load() {
        view?.update(presentation: media)
    }
}

