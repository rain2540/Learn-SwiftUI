//
//  PokemonList.swift
//  PokeMaster
//
//  Created by RAIN on 2020/8/3.
//

import SwiftUI

struct PokemonList: View {

    var body: some View {
        List(PokemonViewModel.all) { pokemon in
            PokemonInfoRow(model: pokemon, expanded: false)
        }
    }

}

struct PokemonList_Previews: PreviewProvider {
    static var previews: some View {
        PokemonList()
    }
}
