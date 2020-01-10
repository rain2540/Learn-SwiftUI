//
//  CalculatorButtonItem.swift
//  L002-Calculator
//
//  Created by RAIN on 2020/1/10.
//  Copyright © 2020 Smartech. All rights reserved.
//

import Foundation

enum CalculatorButtonItem {

    enum Op: String {
        case plus       =   "+"
        case minus      =   "-"
        case multiply   =   "x"
        case divide     =   "÷"
        case equal      =   "="
    }

    enum Command: String {
        case clear      =   "AC"
        case flip       =   "+/-"
        case percent    =   "%"
    }

    case digit(Int)
    case dot
    case op(Op)
    case command(Command)

}
