//
//  User.swift
//  PokeMaster
//
//  Created by RAIN on 2021/1/27.
//

import Foundation

struct User: Codable {

    var email: String
    var favoritePokemonIDs: Set<Int>


    func isFavoritePokemon(id: Int) -> Bool {
        favoritePokemonIDs.contains(id)
    }

}
