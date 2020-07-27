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
                        .font(.subheadline)
                        .foregroundColor(.white)
                }
            }
            .padding(.top, 12)
            HStack(spacing: 20) {
                Spacer()
                Button(action: { print("Fav") }, label: {
                    Image(systemName: "star")
                        .modifier(ToolButtonModifier())
                })
                Button(action: { print("Panel") }, label: {
                    Image(systemName: "chart.bar")
                        .modifier(ToolButtonModifier())
                })
                Button(action: { print("Web") }, label: {
                    Image(systemName: "info.circle")
                        .modifier(ToolButtonModifier())
                })
            }
            .padding(.bottom, 12)
        }.background(Color.green)
    }
    
}


struct ToolButtonModifier: ViewModifier {

    func body(content: Content) -> some View {
        content
            .font(.system(size: 25))
            .foregroundColor(.white)
            .frame(width: 30, height: 30)
    }

}


struct PokemonInfoRow_Previews: PreviewProvider {
    static var previews: some View {
        PokemonInfoRow()
    }
}
