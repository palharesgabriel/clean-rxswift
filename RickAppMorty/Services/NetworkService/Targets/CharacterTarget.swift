//
//  CharacterTarget.swift
//  RickAppMorty
//
//  Created by Gabriel Palhares on 16/07/20.
//  Copyright © 2020 Gabriel Palhares. All rights reserved.
//

import Foundation
import Moya

enum CharacterTarget {
    case fetchChars
}

extension CharacterTarget: TargetType {
    
    var baseURL: URL {
        switch self {
        case .fetchChars:
            return NetworkConstants.URLs.baseURL
        }
    }
    
    var path: String {
        switch self {
        case .fetchChars:
            return "character/"
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .fetchChars:
            return .get
        }
    }
    
    var sampleData: Data {
        switch self {
        case .fetchChars:
            return Data()
        }
    }
    
    var task: Task {
        return Task()
    }
    
    var headers: [String : String]? {
        return nil
    }
    
}
