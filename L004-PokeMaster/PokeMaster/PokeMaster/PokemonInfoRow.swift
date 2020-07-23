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
                    .resizable()
                    .frame(width: 50, height: 50)
                    .aspectRatio(contentMode: .fit)
                    .shadow(radius: 4)
                Spacer()
                VStack(alignment: .trailing) {
                    Text(model.name)
                        .font(.title)
                        .fontWeight(.black)
                        .foregroundColor(.white)
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
