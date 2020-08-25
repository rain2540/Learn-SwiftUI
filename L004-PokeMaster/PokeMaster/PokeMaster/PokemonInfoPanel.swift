//
//  PokemonInfoPanel.swift
//  PokeMaster
//
//  Created by RAIN on 2020/8/11.
//

import SwiftUI

struct PokemonInfoPanel: View {
    
    let model: PokemonViewModel
    
    var abilities: [AbilityViewModel] {
        AbilityViewModel.sample(pokemonID: model.id)
    }
    
    var topIndicator: some View {
        RoundedRectangle(cornerRadius: 3)
            .frame(width: 40, height: 6)
            .opacity(0.2)
    }
    
    var body: some View {
        VStack(spacing: 20) {
            topIndicator
            Header(model: model)
        }
    }
}


extension PokemonInfoPanel {

    struct Header: View {

        let model: PokemonViewModel

        var body: some View {
            HStack(spacing: 18) {
                pokemonIcon
                nameSpecies
                verticalDivider
                VStack(spacing: 12) {
                    bodyStatus
                    typeInfo
                }
            }
        }

        var pokemonIcon: some View {
            Image("Pokemon-\(model.id)")
                .resizable()
                .frame(width: 68, height: 68)
        }

        var nameSpecies: some View {
            VStack(spacing: 10) {
                VStack {
                    Text(model.name)
                        .font(.system(size: 22))
                        .fontWeight(.bold)
                    Text(model.nameEN)
                        .font(.system(size: 13))
                        .fontWeight(.bold)
                }.foregroundColor(model.color)

                Text(model.genus)
                    .font(.system(size: 13))
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
            }

        }

        var verticalDivider: some View {
            Text("")
                .frame(width: 1, height: 44)
                .background(Color(hex: 0x000000, alpha: 0.1))
        }

        var bodyStatus: some View {
            VStack(alignment: .leading) {
                bodyStatusItem(key: "身高", value: model.height)
                bodyStatusItem(key: "体重", value: model.weight)
            }
        }

        var typeInfo: some View {
            HStack {
                ForEach(self.model.types) { t in
                    ZStack {
                        RoundedRectangle(cornerRadius: 7)
                            .fill(t.color)
                            .frame(width:36, height: 14)
                        Text(t.name)
                            .font(.system(size: 10))
                            .foregroundColor(.white)
                    }
                }
            }
        }

        private func bodyStatusItem(key: String, value: String) -> some View {
            HStack {
                Text(key)
                    .font(.system(size: 11))
                    .foregroundColor(.gray)
                Text(value)
                    .font(.system(size: 11))
                    .foregroundColor(model.color)
            }
        }

    }

}


struct PokemonInfoPanel_Previews: PreviewProvider {
    static var previews: some View {
        PokemonInfoPanel(model: .sample(id: 1))
    }
}
