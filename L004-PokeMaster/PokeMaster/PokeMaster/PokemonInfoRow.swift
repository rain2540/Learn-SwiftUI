//
//  PokemonInfoRow.swift
//  PokeMaster
//
//  Created by RAIN on 2020/7/15.
//

import SwiftUI

struct PokemonInfoRow: View {
    let model = PokemonViewModel.sample(id: 1)

    var body: some View {
        VStack {
            HStack {
                Image("Pokemon-\(model.id)")
                Spacer()
                VStack(alignment: .trailing) {
                    Text(model.name)
                    Text(model.nameEN)
                }
            }
            HStack {
                Spacer()
                Button(action: {}, label: {
                    Text("Fav")
                })
                Button(action: {}, label: {
                    Text("Panel")
                })
                Button(action: {}, label: {
                    Text("Web")
                })
            }
        }.background(Color.green)
    }
}

struct PokemonInfoRow_Previews: PreviewProvider {
    static var previews: some View {
        PokemonInfoRow()
    }
}
