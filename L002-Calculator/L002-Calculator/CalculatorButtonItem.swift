//
//  CalculatorButtonItem.swift
//  L002-Calculator
//
//  Created by RAIN on 2020/1/10.
//  Copyright © 2020 Smartech. All rights reserved.
//

import UIKit

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


extension CalculatorButtonItem {

    var title: String {
        switch self {
            case .digit(let value): return String(value)
            case .dot: return "."
            case .op(let op): return op.rawValue
            case .command(let command): return command.rawValue
        }
    }

    var size: CGSize {
        CGSize(width: 88, height: 88)
    }

}