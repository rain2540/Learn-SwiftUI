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
        let token = SubscriptionToken()
        LoginRequest(
            email: email,
            password: password
        ).publisher
        .sink(receiveCompletion: { (complete) in
            if case .failure(let error) = complete {
                store.dispatch(
                    .accountBehaviorDone(result: .failure(error))
                )
            }
            token.unseal()
        }, receiveValue: { (user) in
            store.dispatch(
                .accountBehaviorDone(result: .success(user))
            )
        })
        .seal(in: token)
    }

}


struct LoadPokemonsCommand: AppCommand {

    func execute(in store: Store) {
        let token = SubscriptionToken()
        LoadPokemonRequest.all
            .sink(
                receiveCompletion: { complete in
                    if case .failure(let error) = complete {
                        store.dispatch(.loadPokemonsDone(result: .failure(error)))
                    }
                    token.unseal()
                },
                receiveValue: { value in
                    store.dispatch(.loadPokemonsDone(result: .success(value)))
                }
            )
            .seal(in: token)
    }

}


class SubscriptionToken {

    var cancellable: AnyCancellable?

    func unseal() { cancellable = nil }

}


extension AnyCancellable {

    func seal(in token: SubscriptionToken) {
        token.cancellable = self
    }

}
