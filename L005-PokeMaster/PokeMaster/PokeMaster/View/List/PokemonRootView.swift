//
//  PokemonRootView.swift
//  PokeMaster
//
//  Created by RAIN on 2020/11/30.
//

import SwiftUI

struct PokemonRootView: View {

    @EnvironmentObject var store: Store

    var body: some View {
        NavigationView {
            if store.appState.pokemonList.pokemons == nil {
                Text("Loading...").onAppear(perform: {
                    self.store.dispatch(.loadPokemons)
                })
            } else {
                PokemonList().navigationBarTitle("宝可梦列表")
            }
        }
    }

}

struct PokemonRootView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonRootView()
    }
}
