//
//  CharactersWorker.swift
//  RickAppMorty
//
//  Created by Gabriel Palhares on 16/07/20.
//  Copyright © 2020 Gabriel Palhares. All rights reserved.
//

import Foundation

struct CharacterWorker {

    private var service: CharacterStore

    init(with service: CharacterStore) {
        self.service = service
    }

    func fetchChars(completion: @escaping (CharactersResult?) -> Void) {
        service.loadChars { (result) in
            switch result {
            case .success(let charactersResult):
                completion(charactersResult)
            case .failure(let error):
                completion(nil)
                debugPrint(error.errorDescription ?? "Erro desconhecido")
            }
        }
    }

}
