//
//  PokemonInfoPanelAbilityList.swift
//  PokeMaster
//
//  Created by RAIN on 2020/11/27.
//

import SwiftUI

extension PokemonInfoPanel {

    struct AbilityList: View {

        let model: PokemonViewModel
        let abilityModels: [AbilityViewModel]?
        
        var body: some View {
            VStack(alignment: .leading, spacing: 12, content: {
                Text("技能")
                    .font(.headline)
                    .fontWeight(.bold)
                if abilityModels != nil {
                    ForEach(abilityModels!) { ability in
                        Text(ability.name)
                            .font(.subheadline)
                            .foregroundColor(self.model.color)
                        Text(ability.descriptionText)
                            .font(.footnote)
                            .foregroundColor(Color(hex: 0xAAAAAA))
                            .fixedSize(horizontal: false, vertical: true)
                    }
                }
            })
            .frame(maxWidth: .infinity, alignment: .leading)
        }

    }

}


/*
struct PokemonInfoPanelAbilityList_Previews: PreviewProvider {
    static var previews: some View {
        PokemonInfoPanelAbilityList()
    }
}
*/
