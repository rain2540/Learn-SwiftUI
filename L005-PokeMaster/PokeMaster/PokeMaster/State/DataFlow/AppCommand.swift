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


struct LoginAppCommand: AppCommand {

    let email: String
    let password: String

    func execute(in store: Store) {
        LoginRequest(
            email: email,
            password: password
        ).publisher
        .sink(receiveCompletion: { (complete) in
            if case .failure(let error) = complete {

            }
        }, receiveValue: { (user) in

        })
    }

}


class SubscriptionToken {

    var cancellable: AnyCancellable?

    func unseal() { cancellable = nil }

}
