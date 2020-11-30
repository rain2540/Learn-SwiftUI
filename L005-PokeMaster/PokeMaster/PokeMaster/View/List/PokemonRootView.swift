//
//  PokemonRootView.swift
//  PokeMaster
//
//  Created by RAIN on 2020/11/30.
//

import SwiftUI

struct PokemonRootView: View {

    var body: some View {
        NavigationView {
            PokemonList().navigationBarTitle("宝可梦列表")
        }
    }

}

struct PokemonRootView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonRootView()
    }
}
