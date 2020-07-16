//
//  WorkError.swift
//  RickAppMorty
//
//  Created by Gabriel Palhares on 16/07/20.
//  Copyright © 2020 Gabriel Palhares. All rights reserved.
//

import Foundation

enum WorkError: Error {
    case decodeError(_ message: String)
    case noDataError(_ message: String)
    case unownedError
}

extension WorkError: LocalizedError {
    var errorDescription: String? {
        switch self {
        case .decodeError(let message):
            return message
        case .noDataError(let message):
            return message
        case .unownedError:
            return localizedDescription
        }
    }
}
