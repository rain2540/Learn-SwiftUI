//
//  AppCommand.swift
//  PokeMaster
//
//  Created by Rain on 2021/4/18.
//

import Foundation
import Combine

protocol AppCommand {
    func execute(in store: Store)
}
