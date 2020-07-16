//
//  NetworkConstants.swift
//  RickAppMorty
//
//  Created by Gabriel Palhares on 16/07/20.
//  Copyright © 2020 Gabriel Palhares. All rights reserved.
//

import Foundation

struct NetworkConstants {
    struct URLs {
        static var baseURL: URL {
            guard let url = URL(string: "https://rickandmortyapi.com/api/") else {
                fatalError("error on creating URL")
            }
            return url
        }
    }
}
