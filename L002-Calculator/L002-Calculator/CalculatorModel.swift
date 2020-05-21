//
//  CalculatorModel.swift
//  L002-Calculator
//
//  Created by RAIN on 2020/5/21.
//  Copyright © 2020 Smartech. All rights reserved.
//

import Foundation
import Combine


class CalculatorModel: ObservableObject {

    @Published var brain: CalculatorBrain = .left("0")
    @Published var history: [CalculatorButtonItem] = []


    func apply(_ item: CalculatorButtonItem) {
        brain = brain.apply(item: item)
        history.append(item)
    }

}
