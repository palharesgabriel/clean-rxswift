//
//  Decodable+Extensions.swift
//  RickAppMorty
//
//  Created by Gabriel Palhares on 16/07/20.
//  Copyright © 2020 Gabriel Palhares. All rights reserved.
//

import Foundation

extension Decodable {
    static func encode(json named: String, fileExtension: String = "json") -> Data {
        guard let url = Bundle.main.url(forResource: named, withExtension: fileExtension) else {
            fatalError("Could not find url from file: \(named).\(fileExtension)")
        }

        do {
            return try Data(contentsOf: url)
        } catch {
            fatalError("Error on enconding json: \(error)")
        }

    }
}
