//
//  PokemonList.swift
//  PokeMaster
//
//  Created by RAIN on 2020/8/3.
//

import SwiftUI

struct PokemonList: View {

    @EnvironmentObject var store: Store
    @State var expandingIndex: Int?

    var body: some View {
        ScrollView {
            ForEach(store.appState.pokemonList.allPokemonsByID/*PokemonViewModel.all*/) { pokemon in
                PokemonInfoRow(
                    model: pokemon,
                    expanded: self.expandingIndex == pokemon.id
                )
                .onTapGesture {
                    withAnimation(
                        .spring(
                            response: 0.55,
                            dampingFraction: 0.425,
                            blendDuration: 0)
                    )
                    {
                        if self.expandingIndex == pokemon.id {
                            self.expandingIndex = nil
                        } else {
                            self.expandingIndex = pokemon.id
                        }
                    }
                }
            }
        }
        /*.overlay(
            VStack{
                Spacer()
                PokemonInfoPanel(model: .sample(id: 1))
            }.edgesIgnoringSafeArea(.bottom)
        )*/
    }

}

struct PokemonList_Previews: PreviewProvider {
    static var previews: some View {
        PokemonList()
    }
}
