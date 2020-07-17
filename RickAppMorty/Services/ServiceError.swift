//
//  ServiceError.swift
//  RickAppMorty
//
//  Created by Gabriel Palhares on 16/07/20.
//  Copyright © 2020 Gabriel Palhares. All rights reserved.
//

import Foundation

enum ServiceError: Error {
    case decodeError
    case noDataError
    case unownedError(_ error: Error)
}

extension ServiceError: LocalizedError {
    var errorDescription: String? {
        switch self {
        case .decodeError:
            return "Erro no parse de dados"
        case .noDataError:
            return "Não foi possível encontrar os dados solicitados"
        case .unownedError(let error):
            return error.localizedDescription
        }
    }
}
