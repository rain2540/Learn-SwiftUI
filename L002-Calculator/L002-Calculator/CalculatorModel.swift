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

    let objectWillChange = PassthroughSubject<Void, Never>()

    var brain: CalculatorBrain = .left("0") {
        willSet { objectWillChange.send() }
    }

}
