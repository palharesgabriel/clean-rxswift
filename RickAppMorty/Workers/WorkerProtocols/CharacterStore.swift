//
//  CharacterStore.swift
//  RickAppMorty
//
//  Created by Gabriel Palhares on 16/07/20.
//  Copyright © 2020 Gabriel Palhares. All rights reserved.
//

import Foundation

protocol CharacterStore {
    func loadChars(completion: @escaping (Result<CharactersResult, ServiceError>) -> Void)
}
