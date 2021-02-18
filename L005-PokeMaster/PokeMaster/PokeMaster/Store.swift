//
//  Store.swift
//  PokeMaster
//
//  Created by Rain on 2021/1/14.
//

import Foundation
import Combine

class Store: ObservableObject {

    @Published var appState = AppState()

    static func reduce(
        state: AppState,
        action: AppAction) -> AppState
    {
        var appState = state

        switch action {
            case .login(let email, let password):
                if password == "password" {
                    let user = User(email: email, favoritePokemonIDs: [])
                    appState.settings.loginUser = user
                }
        }
        return appState
    }

}
