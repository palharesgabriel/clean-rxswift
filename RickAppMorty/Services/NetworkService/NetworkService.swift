//
//  NetworkService.swift
//  RickAppMorty
//
//  Created by Gabriel Palhares on 17/07/20.
//  Copyright © 2020 Gabriel Palhares. All rights reserved.
//

import Foundation
import Moya

struct NetworkService: CharacterStore {

    private var provider: NetworkProvider<CharacterTarget> {
        let provider = MoyaProvider<CharacterTarget>()
        return NetworkProvider(with: provider)
    }

    func loadChars(completion: @escaping (Result<CharactersResult, ServiceError>) -> Void) {
        provider.request(target: .fetchChars, completion: completion)
    }

}
