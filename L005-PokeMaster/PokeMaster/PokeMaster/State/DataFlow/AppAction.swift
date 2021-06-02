//
//  AppAction.swift
//  PokeMaster
//
//  Created by RAIN on 2021/2/18.
//

import Foundation

enum AppAction {

    case login(email: String, password: String)
    case accountBehaviorDone(result: Result<User, AppError>)
    case emailValid(valid: Bool)
    case loadPokemons
    case loadPokemonsDone(result: Result<[PokemonViewModel], AppError>)

}
