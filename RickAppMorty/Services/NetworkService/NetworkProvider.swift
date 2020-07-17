//
//  NetworkProvider.swift
//  RickAppMorty
//
//  Created by Gabriel Palhares on 17/07/20.
//  Copyright © 2020 Gabriel Palhares. All rights reserved.
//

import Foundation
import Moya

struct NetworkProvider<Target: TargetType> {

    private var provider: MoyaProvider<Target>

    init(with provider: MoyaProvider<Target>) {
        self.provider = provider
    }

    func request<T: Codable>(target: Target, completion: @escaping(Result<T, ServiceError>) -> Void) {
        provider.request(target) { result in
            switch result {
            case .success(let value):
                do {
                    return completion(Result.success(try JSONDecoder().decode(T.self, from: value.data)))
                } catch {
                    return completion(Result.failure(ServiceError.decodeError))
                }
            case .failure(let error):
                return completion(Result.failure(ServiceError.unownedError(error)))
            }
        }
    }

}
