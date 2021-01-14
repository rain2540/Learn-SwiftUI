//
//  AppState.swift
//  PokeMaster
//
//  Created by Rain on 2021/1/14.
//

import Foundation


struct AppState {

    var settings = Settings()

}


extension AppState {

    struct Settings {

        enum Sorting: CaseIterable {
            case id, name, color, favorite
        }

        var showEnglishName = true
        var sorting = Sorting.id
        var showFavoriteOnly = false

    }

}
