//
//  AppError.swift
//  PokeMaster
//
//  Created by RAIN on 2021/3/22.
//

import Foundation

enum AppError: Error, Identifiable {

    var id: String { localizedDescription }

    case passwordWrong

}


extension AppError: LocalizedError {

    var localizedDescription: String {
        switch self {
            case .passwordWrong:
                return "密码错误"
        }
    }

}
